//
//  Student.h
//  ClassRoster
//
//  Created by John Shaff on 11/16/16.
//  Copyright © 2016 John Shaff. All rights reserved.
//

#import <Foundation/Foundation.h>

//We don't need to exose the protocal methods in the header because it's already exposed

@interface Student : NSObject<NSCopying, NSCoding>

//Properties are atomic or nonatomic... atomic are threadsafe with a mutex lock which will not allow you to maniuplate the data for multiple threads. Weak is when we do not increment the reference count.
@property(strong, nonatomic) NSString *firstName;
@property(strong, nonatomic) NSString *lastName;
@property(strong, nonatomic) NSString *email;

-(instancetype) initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName email:(NSString *)email;


@end
