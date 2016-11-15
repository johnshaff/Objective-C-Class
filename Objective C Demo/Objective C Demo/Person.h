//
//  Person.h
//  Objective C Demo
//
//  Created by John Shaff on 11/14/16.
//  Copyright © 2016 John Shaff. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//ACCESSOR METHODS
-(void)setName:(NSString *)name;
-(NSString *)name;

//INSTANCE METHOD
-(void)walk;

//CLASS METHOD
+(void)sayHello;

@end
