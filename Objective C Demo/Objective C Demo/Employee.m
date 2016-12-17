//
//  Employee.m
//  Objective C Demo
//
//  Created by John Shaff on 12/16/16.
//  Copyright © 2016 John Shaff. All rights reserved.
//

#import "Employee.h"


@implementation Employee

NSNumber *_employeeNumber;
NSString *_yearsEmployed;
NSString *_managerName;
NSArray *_employeeArray;


// GETTERS
-(NSNumber *)employeeNumber{
    return _employeeNumber;
}

-(NSString *)yearsEmployed{
    return _yearsEmployed;
}

-(NSString *)managerName{
    return _managerName;
}



// SETTERS
-(void)setYearsEmployed:(NSString *)yearsEmployed{
    _yearsEmployed = yearsEmployed;
}

-(void)setManagerName:(NSString *)managerName{
    _managerName = managerName;
}

-(void)setEmployeeNumber:(NSNumber *)employeeNumber{
    _employeeNumber = employeeNumber;
}


// INSTANCE METHOD
+(void)findAllEmployeesIn:(NSArray *)employeeArray {
    for (NSString *employee in employeeArray) {
        NSLog(@"%@", employee);
    }
}




@end
