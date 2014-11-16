//
//  ViewController.m
//  UINavigationControllerDemo
//
//  Created by xidanjueying on 14/11/13.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 生成一个按钮控件
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    // 设置按钮的尺寸
    btn.frame = CGRectMake(0, 0, 200, 50);
    // 设置边框厚度
    btn.layer.borderWidth = 2.0;
    // 设置边框圆角
    btn.layer.cornerRadius = 5.0;
    // 设置按钮文本颜色
    btn.tintColor = [UIColor blackColor];
    // 让按钮在屏幕中居中
    btn.center = self.view.center;
    // 设置按钮文案
    [btn setTitle:@"Goto second view" forState:UIControlStateNormal];
    [btn addTarget:self
            action:@selector(gotoSecondView)
  forControlEvents:UIControlEventTouchDown];
    
    // 将按钮丢到视图里
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)gotoSecondView {
    SecondViewController *secViewCtrl = [[SecondViewController alloc] init];
    secViewCtrl.title = @"Second View";
    // animated设置为YES，切换视图时会有动画效果
    [self.navigationController pushViewController:secViewCtrl animated:YES];
}

@end
