//
//  ViewController.m
//  UIPageControlDemo
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
    
    // 生成实例对象
    UIPageControl *pageCtrl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 100, 200, 50)];
    // 设置页面总量
    pageCtrl.numberOfPages = 5;
    // 设置当前页数
    pageCtrl.currentPage = 0;
    // 设置分页圆点的颜色
    pageCtrl.pageIndicatorTintColor = [UIColor whiteColor];
    // 设置当前分页圆点的颜色
    pageCtrl.currentPageIndicatorTintColor = [UIColor greenColor];
    // 相对于根视图垂直水平居中
    pageCtrl.center = self.view.center;
    // 设置圆角
    [pageCtrl.layer setCornerRadius:8];
    // 设置背景色
    [pageCtrl setBackgroundColor:[UIColor blackColor]];
    
    [self.view addSubview:pageCtrl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
