//
//  Child.h
//  NaughtyOrNice
//
//  Created by Claire Jencks on 12/31/00.
//  Copyright (c) 2000 Claire Jencks. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Child : NSObject

-(instancetype)initNaughtyChildWithName:(NSString *)name;

-(instancetype)initNiceChildWithName:(NSString *)name;

@property NSString *name;
@property BOOL naughty;
    



@end
