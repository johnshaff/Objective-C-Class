//
//  ViewController.m
//  Objective C Demo
//
//  Created by John Shaff on 11/14/16.
//  Copyright © 2016 John Shaff. All rights reserved.
//

#import "ViewController.h"

//With this imported, now anyone who imports ViewController will also import Person
#import "Person.h"


// Anything within this interface is only available to this file. It's essentially private. 
@interface ViewController ()


// This ends the interface
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSNumber * number1 = @123;
    NSNumber * number2 = @321;
    
    //APPLE RECOMENDS TO USE METHODS THAT ARE SPECIFIC TO THAT OBJECT TYPE EVEN THOUGH THERE ARE MULTIPLE OPTIONS.
    //THIS IS BECAUSE THERE'S OTHER STUFF AVAILABLE
    if ([number1 isEqualToNumber:number2]) {
        
    }

    //In objective C, switches only work on numbers and with enums... the compare method is making those case types available within the switch statement. If it was a different method, other methods would be available.
    switch ([number1 compare:number2]) {
        case NSOrderedSame:
            NSLog(@"Values are equal");
            break;
        case NSOrderedAscending:
            NSLog(@"Values are ascending");
            break;
        case NSOrderedDescending:
            NSLog(@"Values are descending");
            break;
            
        default:
            break;
    }
    
    //The @ symbol takes in an object. Because number1 & 2 are NSNumbers it will work here, but if it was just an Int, we'd get an error.
    
    NSString *string = [NSString stringWithFormat:@"%@, %@", number1, number2];
    
    string = @"This is a new string...";
    
    Person *testSubject = [[Person alloc] init];
    [testSubject setName:@"John"];
    
    NSString *name = [testSubject name];
    
    NSLog(@"%@", name);
    
    
    //Instance method... calling the walk method from the testSubject instance
    [testSubject walk];
    
    //Class method... calling the sayHello method from the Person class
    [Person sayHello];
    
    
    NSString *string1 = @"one";
    NSString *string2 = @"two";
    NSString *string3 = @"three";
    
    NSNumber *number = @55;
    
    NSArray *array = @[string1, string2, string3];
    
    [array count];
    
    NSDictionary *dictionary = @{@"stringOne":string1, @2:string2, @"stringThree":string3};
    
    //These are two different ways to take a value out of a dictionary
    NSString *otherString1 = [dictionary objectForKey:@"stringOne"];
    NSString *otherString2 = dictionary[@2];
    
    NSMutableDictionary *mutableDictionary = [[NSMutableDictionary alloc]init];
    
    [mutableDictionary setObject:number forKey:@5];
    
    //MARK: NSFileManager
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSArray *urls = [fileManager URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask];
    
    NSLog(@"%@", urls);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
