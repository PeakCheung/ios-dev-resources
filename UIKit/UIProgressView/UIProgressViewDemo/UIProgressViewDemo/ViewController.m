//
//  ViewController.m
//  UIProgressViewDemo
//
//  Created by xidanjueying on 14/11/19.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 生成进度条实例
    UIProgressView *progressView = [[UIProgressView alloc] init];
    // 设置进度条的尺寸
    progressView.frame = CGRectMake(0, 0, 250, 30);
    // 让进度条居中显示
    progressView.center = self.view.center;
    // 设置进度条的风格
    progressView.progressViewStyle = UIProgressViewStyleBar;
    // 设置选中进度部分的颜色
    progressView.progressTintColor = [UIColor redColor];
    // 设置剩余进度部分的颜色
    progressView.trackTintColor = [UIColor blackColor];
    // 设置当前进度值
    progressView.progress = 0.5;
    
    // 将进度条添加到视图中显示
    [self.view addSubview:progressView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
