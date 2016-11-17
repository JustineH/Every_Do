//
//  DetailViewController.h
//  Every_Do
//
//  Created by Justine Herman on 11/15/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) ToDo *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailToDoLabel;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *detailsPriorityLabel;
@property (weak, nonatomic) IBOutlet UISwitch *detailsCompleteSwitch;


@end

