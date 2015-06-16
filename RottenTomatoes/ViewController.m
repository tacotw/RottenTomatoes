//
//  ViewController.m
//  RottenTomatoes
//
//  Created by Taco Chang on 2015/6/15.
//  Copyright (c) 2015年 Taco Chang. All rights reserved.
//

#import "ViewController.h"
#import <UIImageView+AFNetworking.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titleLabel.text = self.movie[@"title"];
    self.synopsisLabel.text = self.movie[@"synopsis"];
    NSString *posterURLString = [self.movie valueForKeyPath:@"posters.detailed"];
    posterURLString = [self convertPosterUrlStringToHighRes:posterURLString];
    [self.posterView setImageWithURL:[NSURL URLWithString:posterURLString]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Helper to workaround Rotten Tomatoes only giving low res images.
- (NSString *)convertPosterUrlStringToHighRes:(NSString *)urlString {
    NSRange range = [urlString rangeOfString:@".*cloudfront.net/" options:NSRegularExpressionSearch];
    NSString *returnValue = urlString;
    if (range.length > 0) {
        returnValue = [urlString stringByReplacingCharactersInRange:range withString: @"https://content6.flixster.com/"];
    }
    return returnValue;
}

@end
