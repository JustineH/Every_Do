//
//  DetailViewController.m
//  Every_Do
//
//  Created by Justine Herman on 11/15/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        [self configureView];
    }
}


- (void)configureView
{
    if (self.detailItem)
    {
        self.detailToDoLabel.text = self.detailItem.item;
        self.detailDescriptionLabel.text = [self.detailItem toDoDescription];
        self.detailsPriorityLabel.selectedSegmentIndex = [self.detailItem priorityNumber];
        [self.detailsCompleteSwitch setOn: [self.detailItem isCompleted]];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
