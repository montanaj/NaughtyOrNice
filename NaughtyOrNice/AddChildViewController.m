//
//  AddChildViewController.m
//  NaughtyOrNice
//
//  Created by Claire Jencks on 12/31/00.
//  Copyright (c) 2000 Claire Jencks. All rights reserved.
//

#import "AddChildViewController.h"

@interface AddChildViewController ()

@end

@implementation AddChildViewController

- (IBAction)onNiceButtonPressed:(id)sender
{

    [self dismissViewControllerAnimated:YES completion:nil];
}



- (IBAction)onNaughtyButtonPressed:(id)sender
{

    [self dismissViewControllerAnimated:YES completion:nil];
}





/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
