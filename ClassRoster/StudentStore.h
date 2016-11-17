//
//  StudentStore.h
//  ClassRoster
//
//  Created by John Shaff on 11/16/16.
//  Copyright © 2016 John Shaff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface StudentStore : NSObject


+(instancetype)shared;


-(NSInteger)count;

-(NSArray *)allStudents;

-(void) add:(Student *)student;
-(void) remove:(Student *)student;

-(void) save;

@end
