//
//  ViewController.m
//  UIBarButtonItemDemo
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

    // 生成导航条实例
    UINavigationBar *navBar = [[UINavigationBar alloc] init];
    // 生成导航项实例
    UINavigationItem *navItem = [[UINavigationItem alloc] init];
    // 生成导航条上的按钮
    UIBarButtonItem *composeBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCompose
                                                            target:nil
                                                            action:nil];
    UIBarButtonItem *replyBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply
                                                            target:nil
                                                            action:nil];
    UIBarButtonItem *actionBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction
                                                            target:nil
                                                            action:nil];
    // 获取屏幕大小
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    // 设置导航条左边的按钮，也可写成：navItem.leftBarButtonItems = @[composeBtn];
    navItem.leftBarButtonItem = composeBtn;
    // 设置导航条右边的按钮（多个）
    navItem.rightBarButtonItems = @[replyBtn, actionBtn];
    // 设置导航条的位置及尺寸
    navBar.frame = CGRectMake(0, 0, screenBounds.size.width, 80);
    // 设置导航条中内容的颜色
    [navBar setTintColor:[UIColor blueColor]];
    // 设置导航条的背景颜色
    [navBar setBarTintColor:[UIColor lightGrayColor]];
    // 将两个 item 添加到导航栈中
    [navBar pushNavigationItem:navItem animated:YES];
    // 将导航条添加到根视图中
    [self.view addSubview:navBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
