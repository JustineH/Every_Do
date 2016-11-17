//
//  AddItemViewController.h
//  Every_Do
//
//  Created by Justine Herman on 11/15/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@protocol AddItemDelegate

- (void)saveNewItem:(ToDo *)toDo;

@end

@interface AddItemViewController : UIViewController

@property (weak, nonatomic) id <AddItemDelegate> delegate;

@end
