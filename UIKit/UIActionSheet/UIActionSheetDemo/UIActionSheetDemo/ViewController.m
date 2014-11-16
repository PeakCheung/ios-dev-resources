//
//  ViewController.m
//  UIActionSheetDemo
//
//  Created by xidanjueying on 14/11/12.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 实例化
    UIActionSheet *as = [[UIActionSheet alloc] initWithTitle:@"action sheet"
                                                    delegate:nil
                                           cancelButtonTitle:@"cancel"
                                      destructiveButtonTitle:@"don't do"
                                           otherButtonTitles:@"hello world", nil];
    // 显示
    [as showInView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
