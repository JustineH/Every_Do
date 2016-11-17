//
//  MasterViewController.m
//  Every_Do
//
//  Created by Justine Herman on 11/15/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "ToDoCell.h"


@interface MasterViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic) NSMutableArray *toDoItems;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *addButton;

- (void)saveNewItem:(ToDo *)toDo;


@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"ToDoCell"];

    self.toDoItems = [[NSMutableArray alloc] init];

    {
        ToDo *toDo = [ToDo new];
        toDo.item = @"Buy flowers";
        toDo.toDoDescription = @"Emily's birthday";
        toDo.priorityNumber = 1;
        toDo.isCompleted = NO;
        [self.toDoItems addObject:toDo];
        
        ToDo *toDo1 = [ToDo new];
        toDo1.item = @"Pick up dry cleaning";
        toDo1.toDoDescription = @"Ready on Thursday";
        toDo1.priorityNumber = 2;
        toDo1.isCompleted = NO;
        [self.toDoItems addObject:toDo1];
        
        ToDo *toDo2 = [ToDo new];
        toDo2.item = @"Grocery shopping";
        toDo2.toDoDescription = @"Eggs, Milk, Bread";
        toDo2.priorityNumber = 1;
        toDo2.isCompleted = NO;
        [self.toDoItems addObject:toDo2];
        
    }
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(goToAddNewItem:)];
    self.navigationItem.rightBarButtonItem = addButton;
    
}


- (void)viewWillAppear:(BOOL)animated
{
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


- (void)goToAddNewItem:(id)sender
{
    if (!self.toDoItems)
    {
        self.toDoItems = [[NSMutableArray alloc] init];
    }
    
    [self performSegueWithIdentifier:@"sendToAdd" sender:self];

}

- (void)saveNewItem:(ToDo *)toDo
{
    [self.toDoItems addObject:toDo];
    [self.tableView reloadData];
}


#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        ToDo *toDoItem = self.toDoItems[indexPath.row];

        DetailViewController *controller = (DetailViewController *)[segue destinationViewController];
        [controller setDetailItem:toDoItem];
        
    }
    else if ([[segue identifier] isEqualToString:@"sendToAdd"])
    {
        AddItemViewController *controller = (AddItemViewController *)[segue destinationViewController];
        controller.delegate = self;
    }
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.toDoItems.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ToDoCell" forIndexPath:indexPath];
    
    ToDo *toDoItem = self.toDoItems[indexPath.row];
    cell.textLabel.text = toDoItem.item;
    
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [self.toDoItems removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 //   } else if (editingStyle == UITableViewCellEditingStyleInsert)
//    {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}


#pragma mark - UITableViewDelegate


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"showDetail" sender:self];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
