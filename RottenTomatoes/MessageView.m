//
//  MessageView.m
//  RottenTomatoes
//
//  Created by Taco Chang on 2015/6/16.
//  Copyright (c) 2015年 Taco Chang. All rights reserved.
//

#import "MessageView.h"

@implementation MessageView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    self.backgroundColor = [UIColor colorWithRed:0.5 green:0.6 blue:0.9 alpha:0.5];
    UILabel *label = [[UILabel alloc]
                      initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 25)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"⚠️ Network error";
    label.textColor = [UIColor redColor];
    [self addSubview:label];
}


@end
