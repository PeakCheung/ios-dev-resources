//
//  ViewController.m
//  UIToolbarDemo
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
    
    // 生成toolbar实例
    UIToolbar *toolbar = [[UIToolbar alloc] init];
    // 用于在其他按钮之间实现相同的间距，间距由系统自动计算
    UIBarButtonItem *btnPlace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                              target:nil
                                                                              action:nil];
    // bookmark 按钮
    UIBarButtonItem *btnBootmark = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks
                                                                                 target:nil
                                                                                 action:nil];
    
    // 照相机按钮
    UIBarButtonItem *btnCamera = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera
                                                                               target:nil
                                                                               action:nil];
    
    // 刷新按钮
    UIBarButtonItem *btnRefresh = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh
                                                                                target:nil
                                                                                action:nil];
    
    // 获取当前视图的尺寸
    CGSize currentViewSize = self.view.frame.size;
    
    // 设置toolbar的位置和尺寸
    toolbar.frame = CGRectMake(0, currentViewSize.height - 60, currentViewSize.width, 60);
    // 设置toolbar的样式
    toolbar.barStyle = UIBarStyleDefault;
    // 设置toolbar的背景颜色
    toolbar.backgroundColor = [UIColor lightGrayColor];
    // 将按钮添加到toolbar上
    toolbar.items = @[btnBootmark, btnPlace, btnCamera, btnPlace, btnRefresh];
    
    // 将toolbar丢到视图中去显示
    [self.view addSubview:toolbar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
