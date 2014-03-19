//
//  AddChildViewControllerDelegate.h
//  NaughtyOrNice
//
//  Created by Claire Jencks on 3/19/14.
//  Copyright (c) 2014 Claire Jencks. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddChildViewController.h"


@protocol AddChildViewControllerDelegate

//this is the same structure as uitable view method....
-(void)addChildViewController:(AddChildViewController *)addChildViewController didFinishWithNewChild:(Child *)child;


@end
