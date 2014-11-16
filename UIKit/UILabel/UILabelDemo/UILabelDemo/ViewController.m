//
//  ViewController.m
//  UILabelDemo
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
    UILabel *label = [[UILabel alloc] init];
    // 设置文本控件的位置及尺寸
    label.frame = CGRectMake(0, 0, 200, 50);
    // 让文本控件垂直水平居中
    label.center = self.view.center;
    // 设置文本内容居中对齐
    label.textAlignment = NSTextAlignmentCenter;
    // 设置文案
    label.text = @"hello world";
    // 设置文本颜色
    label.textColor = [UIColor redColor];
    // 设置文本字体大小
    label.font = [UIFont systemFontOfSize:30];
    
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
