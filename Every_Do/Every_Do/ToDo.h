//
//  ToDo.h
//  Every_Do
//
//  Created by Justine Herman on 11/15/16.
//  Copyright © 2016 Justine Herman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject

@property (nonatomic) NSString *item;
@property (nonatomic) NSString *toDoDescription;
@property (nonatomic) int priorityNumber;
@property (nonatomic) BOOL isCompleted;

- (instancetype)toDoWithItem:(NSString *)item toDoDescription:(NSString *)toDoDescription priorityNumber:(int)priorityNumber isCompleted:(BOOL)isCompleted;


@end
