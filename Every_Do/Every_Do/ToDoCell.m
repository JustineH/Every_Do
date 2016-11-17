//
//  ToDoCell.m
//  Every_Do
//
//  Created by Justine Herman on 11/15/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "ToDoCell.h"

@interface ToDoCell ()

@property (nonatomic) UILabel *toDoLabel;

@end

@implementation ToDoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)configureCellWithToDoItem:(ToDo *)toDo
{

    
}

@end
