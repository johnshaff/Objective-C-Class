//
//  User.h
//  MRC
//
//  Created by John Shaff on 11/15/16.
//  Copyright © 2016 John Shaff. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
{
    NSString *_name;
    NSNumber *_age;
    NSString *_email;
    
}

-(void)setName:(NSString *)name;
-(void)setAge:(NSNumber *)age;
-(void)setEmail:(NSString *)email;


-(instancetype)initWithName:(NSString*)name initWithAge:(NSNumber*)age initWithEmail:(NSString*)email;

-(NSString *)name;
-(NSString *)email;
-(NSNumber *)age;
-(NSString *)description;

@end
