//
//  ViewController.m
//  UIButtonDemo
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

    // 定义按钮背景色、文本颜色、边框颜色
    UIColor *bgColor = [UIColor lightGrayColor];
    UIColor *textColor = [UIColor blueColor];
    CGColorRef borderColor = [UIColor blackColor].CGColor;
    
    // 定义按钮
    NSArray *btnList = @[[UIButton buttonWithType:UIButtonTypeSystem],
                         [UIButton buttonWithType:UIButtonTypeDetailDisclosure],
                         [UIButton buttonWithType:UIButtonTypeInfoLight],
                         [UIButton buttonWithType:UIButtonTypeInfoDark],
                         [UIButton buttonWithType:UIButtonTypeContactAdd]];
    // 定义按钮标题
    NSArray *btnTitleList = @[@"System",
                              @"Detail Disclosure",
                              @"Info Light",
                              @"Info Dark",
                              @"Contact Add"];
    
    for (int i = 0; i < [btnList count]; i++) {
        // 取得当前按钮
        UIButton *btn = btnList[i];
        // 获取按钮对应的层
        CALayer *btnLayer = btn.layer;
        
        // 设置按钮标题
        [btn setTitle:btnTitleList[i] forState:UIControlStateNormal];
        // 设置边框颜色、厚度及圆角
        [btnLayer setBorderColor:borderColor];
        [btnLayer setBorderWidth:5.0f];
        [btnLayer setCornerRadius:10.0f];
        
        // 设置按钮位置及大小
        btn.frame = CGRectMake(80, 100 * (i+1), 200, 50);
        // 设置按钮背景色
        btn.backgroundColor = bgColor;
        // 设置按钮文本颜色
        btn.tintColor = textColor;
        
        [self.view addSubview:btn];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
