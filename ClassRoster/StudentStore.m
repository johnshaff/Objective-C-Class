//
//  StudentStore.m
//  ClassRoster
//
//  Created by John Shaff on 11/16/16.
//  Copyright © 2016 John Shaff. All rights reserved.
//

#import "StudentStore.h"



@interface StudentStore ()

@property(strong, nonatomic)NSMutableDictionary *students;



@end


@implementation StudentStore

+(instancetype) shared {
    
    //Singleton Step 1: Created the instance
    static StudentStore *shared = nil;
    
    //Singleton Step 2: Created the instance
    static dispatch_once_t onceToken;
    
    //The carrot is an Objective C closure... aka Blocks
    dispatch_once(&onceToken, ^{
        shared = [[StudentStore alloc]init];
    });
    
    return shared;
}

-(instancetype) init {
    self = [super init];
    
    if (self) {
        
        self.students = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:self.archiveURL]];
        
        if(!self.students){
            self.students = [[NSMutableDictionary alloc]init];
        }
    }
    return self;
}



-(NSInteger) count {
    return self.students.count;
}



-(NSArray *)allStudents {
    
    NSMutableArray *results = [[NSMutableArray alloc]init];
    for(Student *student in self.students.allValues){
        [results addObject:[student copy]];
        
    }
    
    return results;
}



-(void) add:(Student *)student {
    
    [self.students setObject:student forKey:student.email];
    [self save];
    
}



-(void) remove:(Student *)student {
    
    [self.students removeObjectForKey:student.email];
    [self save];
}


-(void) save {

    [NSKeyedArchiver archiveRootObject: self.students toFile:self.archiveURL.path];
    
}

-(NSURL *) archiveURL {
    
    NSURL *documentsDirectory = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains: NSUserDomainMask] firstObject];
    NSURL *archiveURL = [documentsDirectory URLByAppendingPathComponent:@"archive"];
    return archiveURL;
}


@end
