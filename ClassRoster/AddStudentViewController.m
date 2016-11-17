//
//  AddStudentViewController.m
//  ClassRoster
//
//  Created by John Shaff on 11/17/16.
//  Copyright © 2016 John Shaff. All rights reserved.
//

#import "AddStudentViewController.h"
#import "StudentStore.h"
#import "Student.h"

@interface AddStudentViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstNameField;

@property (weak, nonatomic) IBOutlet UITextField *lastNameField;

@property (weak, nonatomic) IBOutlet UITextField *emailField;




@end

@implementation AddStudentViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)saveButton:(id)sender {
    
    NSArray *allStudents = [[StudentStore shared] allStudents];
    
    Student *newStudent = [[Student alloc]init];
    newStudent.firstName = self.firstNameField.text;
    newStudent.lastName = self.lastNameField.text;
    newStudent.email = self.emailField.text;
    
    [allStudents arrayByAddingObject:newStudent];
}


@end
