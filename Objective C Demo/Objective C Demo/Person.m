//
//  Person.m
//  Objective C Demo
//
//  Created by John Shaff on 11/14/16.
//  Copyright © 2016 John Shaff. All rights reserved.
//

#import "Person.h"

extern int *_gMoveNumber;

@implementation Person

NSString *_name;


// SETTER
-(void)setName:(NSString *)name{
    _name = name;
}

-(void)setGMove:(int *)gMoveNumber{
    _gMoveNumber = gMoveNumber;
}


// GETTER
-(NSString *)name{
    return _name;
}

// INSTANCE METHOD
-(void)walk{
    NSLog(@"We're walking");
}

// TYPE METHOD
+(void)sayHello{
    NSLog(@"Hello");
}


@end
