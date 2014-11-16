//
//  ViewController.m
//  UITabBarDemo
//
//  Created by xidanjueying on 14/11/15.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 生成实例
    UITabBar *tabbar = [[UITabBar alloc] init];
    // 获取当前视图的尺寸
    CGSize viewSize = self.view.frame.size;
    // 设置tabbar的位置及尺寸
    tabbar.frame = CGRectMake(0, viewSize.height - 49, viewSize.width, 50);
    // 设置要显示在tabbar中的条目
    tabbar.items = @[
                     [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites
                                                                tag:0],
                     [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks
                                                                tag:1],
                     [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads
                                                                tag:2],
                     [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory
                                                                tag:3]
                    ];
    // 设置tabbar的风格
    tabbar.barStyle = UIBarStyleDefault;
    // 设置条目在tabbar中的位置
    tabbar.itemPositioning = UITabBarItemPositioningAutomatic;
    
    // 将tabbar添加到视图中显示
    [self.view addSubview:tabbar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
