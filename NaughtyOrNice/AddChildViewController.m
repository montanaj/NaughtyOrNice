//
//  AddChildViewController.m
//  NaughtyOrNice
//
//  Created by Claire Jencks on 12/31/00.
//  Copyright (c) 2000 Claire Jencks. All rights reserved.
//

#import "AddChildViewController.h"
#import "Child.h"

@interface AddChildViewController ()
@property (strong, nonatomic) IBOutlet UITextField *childBloomingTextField;

@end

@implementation AddChildViewController

- (IBAction)onNiceButtonPressed:(id)sender
{
    NSString *bloomingName = self.childBloomingTextField.text;
    
    Child *child = [[Child alloc]initNiceChildWithName:bloomingName];
    [self.delegate addChildViewController:self didFinishWithNewChild:child];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}



- (IBAction)onNaughtyButtonPressed:(id)sender
{

    
    NSString *bloomingName = self.childBloomingTextField.text;
    
    Child *child = [[Child alloc]initNaughtyChildWithName:bloomingName];
    [self.delegate addChildViewController:self didFinishWithNewChild:child];
    
    
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
