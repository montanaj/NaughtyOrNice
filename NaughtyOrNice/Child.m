//
//  Child.m
//  NaughtyOrNice
//
//  Created by Claire Jencks on 12/31/00.
//  Copyright (c) 2000 Claire Jencks. All rights reserved.
//

#import "Child.h"

@implementation Child

//instance method that is also an initializer (declared first in the .h file)
//we use this in the cmjviewcontroller
-(instancetype)initNaughtyChildWithName:(NSString *)name
{
    self.name = name;
    self.naughty = YES;
    return self;
    
}

-(instancetype)initNiceChildWithName:(NSString *)name
{
    self.name = name;
    self.naughty = NO;
    return self;
}


@end
