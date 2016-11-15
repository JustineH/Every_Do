//
//  DetailViewController.h
//  Every_Do
//
//  Created by Justine Herman on 11/15/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

