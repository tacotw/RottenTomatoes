//
//  ViewController.h
//  RottenTomatoes
//
//  Created by Taco Chang on 2015/6/15.
//  Copyright (c) 2015年 Taco Chang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@property (strong, nonatomic) NSDictionary *movie;

@end

