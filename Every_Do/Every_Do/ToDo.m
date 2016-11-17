//
//  ToDo.m
//  Every_Do
//
//  Created by Justine Herman on 11/15/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import "ToDo.h"


@implementation ToDo


- (instancetype)initToDoWithItem:(NSString *)item toDoDescription:(NSString *)toDoDescription priorityNumber:(int)priorityNumber isCompleted:(BOOL)isCompleted
{
    self = [super init];
    if (self)
    {
        self.item = item;
        self.toDoDescription = toDoDescription;
        self.priorityNumber = priorityNumber;
        self.isCompleted = NO;
    }
    return self;
}

@end
