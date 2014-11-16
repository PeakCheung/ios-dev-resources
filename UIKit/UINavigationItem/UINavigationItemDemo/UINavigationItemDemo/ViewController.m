//
//  ViewController.m
//  UINavigationItemDemo
//
//  Created by xidanjueying on 14/11/14.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 实例化
    UINavigationBar *navBar = [[UINavigationBar alloc] init];
    UINavigationItem *navItem = [[UINavigationItem alloc] initWithTitle:@"Nav 1"];
    UINavigationItem *navItem2 = [[UINavigationItem alloc] initWithTitle:@"Nav 2"];
    
    // 获取屏幕大小
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    // 设置导航条的位置及尺寸
    navBar.frame = CGRectMake(0, 0, screenBounds.size.width, 60);
    // 设置导航条的背景颜色
    [navBar setBarTintColor:[UIColor yellowColor]];
    // 将两个 item 添加到导航栈中，并显示成这样："Nav 2"会显示在导航条中间，"Nav 1"会显示在导航条左边并带有返回箭头
    [navBar pushNavigationItem:navItem animated:YES];
    [navBar pushNavigationItem:navItem2 animated:YES];
    // 将导航条添加到根视图中
    [self.view addSubview:navBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
