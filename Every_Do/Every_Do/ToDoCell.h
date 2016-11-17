//
//  ToDoCell.h
//  Every_Do
//
//  Created by Justine Herman on 11/15/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@interface ToDoCell : UITableViewCell

@property (nonatomic) ToDo *toDoItem;

-(void)configureCellWithToDoItem:(ToDo *)toDo;

@end
