//
//  AddChildViewController.h
//  NaughtyOrNice
//
//  Created by Claire Jencks on 12/31/00.
//  Copyright (c) 2000 Claire Jencks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddChildViewControllerDelegate.h"

@interface AddChildViewController : UIViewController

@property id<AddChildViewControllerDelegate> delegate;

@end
