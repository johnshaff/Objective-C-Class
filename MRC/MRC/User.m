//
//  User.m
//  MRC
//
//  Created by John Shaff on 11/15/16.
//  Copyright © 2016 John Shaff. All rights reserved.
//

#import "User.h"

@implementation User







-(void)setName:(NSString *)name{
    if(_name != name) {
        [name retain];
        [_name release];
        
        _name = name;
    }
}

-(void)setAge:(NSNumber *)age{
    if(_age != age) {
        [age retain];
        [_age release];
        
        _age = age;
    }
}

-(void)setEmail:(NSString *)email{
    if(_email != email){
        [email retain];
        [_email release];
        
        _email = email;
    }
}

-(NSString *)email {
    return _email;
}

-(NSNumber *)age {
    return _age;
}

-(NSString *)name{
    return _name;
}


-(NSString *)description {
    NSString *description = [[NSString alloc] initWithFormat:@"NAME:%@ - EMAIL:%@", self.name, self.email];
    
    [description autorelease];
    return description;
}

//This deallocates all objects
- (void)dealloc
{
    [_name release];
    [_age release];
    [_email release];
    
    _name = nil;
    _age = nil;
    _email = nil;
    
    NSLog(@"%li", [self retainCount]);
    
    
    [super dealloc];
}

-(instancetype)initWithName:(NSString*)name initWithAge:(NSNumber*)age initWithEmail:(NSString*)email
{
    //If self is a subclass then Objective C will automatically know the super is the of the above "instancetype"
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.email = email;
    }
    return self;
}



@end


