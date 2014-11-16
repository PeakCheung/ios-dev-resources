//
//  SecondViewController.m
//  UINavigationControllerDemo
//
//  Created by xidanjueying on 14/11/14.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    [btn setTitle:@"Back to root view" forState:UIControlStateNormal];
    [btn addTarget:self
            action:@selector(backToRootView)
  forControlEvents:UIControlEventTouchDown];
    
    // 设置背景色
    self.view.backgroundColor = [UIColor whiteColor];
    // 将按钮丢到视图里
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)backToRootView {
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
