//
//  AddItemViewController.m
//  Every_Do
//
//  Created by Justine Herman on 11/15/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "AddItemViewController.h"

@class MasterViewController;


@interface AddItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *addToDoItem;
@property (weak, nonatomic) IBOutlet UITextField *addDescriptionText;
@property (weak, nonatomic) IBOutlet UISegmentedControl *prioritySegmentedControl;

@end



@implementation AddItemViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc] initWithTitle:@"Save" style:UIBarButtonItemStyleDone target:self action:@selector(saveNewItem)];
    self.navigationItem.leftBarButtonItem = saveButton;
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithTitle:@"Cancel" style:UIBarButtonItemStyleDone target:self action:@selector(cancelNewItem)];
    self.navigationItem.rightBarButtonItem = cancelButton;

    UISegmentedControl *priorityChoice = [[UISegmentedControl alloc] init];
    [priorityChoice addTarget:self action:@selector(addPriorityChoice:) forControlEvents:UIControlEventValueChanged];
  
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)saveNewItem
{
    ToDo *newToDo = [ToDo new];
    newToDo.item = self.addToDoItem.text;
    newToDo.toDoDescription = self.addDescriptionText.text;
    newToDo.priorityNumber = (int)self.prioritySegmentedControl.selectedSegmentIndex;
    
    [self.delegate saveNewItem:newToDo];
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
