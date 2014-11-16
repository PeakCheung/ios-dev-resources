//
//  ViewController.m
//  UIAlertViewDemo
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
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:@"alert view"
                                                 message:@"hello world"
                                                delegate:nil
                                       cancelButtonTitle:@"cancel"
                                       otherButtonTitles:@"ok", nil];
    // 显示
    [av show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
