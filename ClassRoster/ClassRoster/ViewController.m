//
//  ViewController.m
//  ClassRoster
//
//  Created by John Shaff on 11/16/16.
//  Copyright © 2016 John Shaff. All rights reserved.
//

#import "ViewController.h"
#import "StudentStore.h"



@interface ViewController ()  <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *timelineTableView;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.timelineTableView.dataSource = self;
    self.timelineTableView.delegate = self;
    
    self.timelineTableView.estimatedRowHeight = 75;
    self.timelineTableView.rowHeight = UITableViewAutomaticDimension;

    NSArray *allStudents = [[StudentStore shared] allStudents];
    
    NSLog(@"%@", allStudents);
    
    //CREATE A NEW STUDENT TO SAVE
    
    Student *newStudent = [[Student alloc] initWithFirstName:@"John" lastName:@"Shaff" email:@"johnshaff@gmail.com"];
    
    [[StudentStore shared] add:newStudent];

    //RUN POPULATE CELLS FUNCTION
}

- (IBAction)addStudentButton:(id)sender {
    
    [self performSegueWithIdentifier:@"addStudent" sender:self];

}




-(void) populateCell {
    //I want to take in the array of students and populate the cells labels with the key:value pairs from within the dictionary.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSArray *allStudents = [[StudentStore shared] allStudents];
    return allStudents.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    NSArray *allStudents = [[StudentStore shared] allStudents];


    Student *currentStudent = allStudents[indexPath.row];
    cell.textLabel.text = currentStudent.firstName;

    return cell;
}

@end


