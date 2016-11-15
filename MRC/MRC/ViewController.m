//
//  ViewController.m
//  MRC
//
//  Created by John Shaff on 11/15/16.
//  Copyright © 2016 John Shaff. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    User *user1 = [[User alloc]initWithName:@"Bob Costas" initWithAge:@59 initWithEmail:@"bobcostas@abc.com"];
    User *user2 = [[User alloc]initWithName:@"Jerry Smith" initWithAge:@45 initWithEmail:@"jerrysmith@gmail.com"];
    User *user3 = [[User alloc]initWithName:@"Dirk McGirk" initWithAge:@32 initWithEmail:@"dirkmcgirk@yahoo.com"];
    User *user4 = [[User alloc]initWithName:@"Newman" initWithAge:@32 initWithEmail:@"newman@nbc.com"];
    User *user5 = [[User alloc]initWithName:@"Jerry Seinfeld" initWithAge:@64 initWithEmail:@"jerry@gmail.com"];

    

    
    
}

    
    
//    User *newUser = [[User alloc]init];
//    
//    [newUser setName:@"John"];
//    [newUser setEmail:@"johnshaff@gmail.com"];
//    
//    NSLog(@"%@", newUser.description);
//    
//    [newUser release];



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
