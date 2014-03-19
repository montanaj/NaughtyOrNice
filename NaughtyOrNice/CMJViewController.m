//
//  CMJViewController.m
//  NaughtyOrNice
//
//  Created by Claire Jencks on 12/31/00.
//  Copyright (c) 2000 Claire Jencks. All rights reserved.
//

#import "CMJViewController.h"
#import "Child.h"
#import "AddChildViewControllerDelegate.h"
#import "AddChildViewController.h"

@interface CMJViewController () <UITableViewDelegate, UITableViewDataSource, AddChildViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@property NSMutableArray *children;


@end

@implementation CMJViewController

-(void)addChildViewController:(id)addChildViewController didFinishWithNewChild:(Child *)child
{
    [self.children addObject:child];
    [self.myTableView reloadData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    //this is the first way to instantiate an object, good for one or two instances of an object, with no logic attached.
    Child *child1 = [Child new];
    child1.name = @"Brandon";
    child1.naughty = YES;
    
    //this is a good way of instantiating things all with the same chunk of logic, also speeds things up. (encapsulating what it is to be a child withing the implementation method)
    
    Child *child2 = [[Child alloc] initNaughtyChildWithName:@"Ryan"];
    
    Child *child3 = [[Child alloc] initNaughtyChildWithName:@"Max"];
    
    
    NSLog(@"%@ %@ %@", child1.name, child2.name, child3.name);
    
    self.children = [[NSMutableArray alloc]initWithObjects:child1, child2, child3, nil];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.children.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //declaring an instance of the object of the class Child, but it reloads/runs every time, so a new row is placed every time.
    //the method is called each time for every row that is placed
    
    Child *child = [self.children objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCellID"];
    cell.textLabel.text = child.name;
    return cell;
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender

{
    AddChildViewController *vc = segue.destinationViewController;
    vc.delegate = self;
    
    
}






















@end
