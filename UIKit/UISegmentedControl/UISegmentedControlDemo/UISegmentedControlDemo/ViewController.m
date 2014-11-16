//
//  ViewController.m
//  UISegmentedControlDemo
//
//  Created by xidanjueying on 14/11/11.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UILabel *label;
@property NSArray *bgColors;
@end

@implementation ViewController

// 改变文本控件的背景颜色
- (void)changeLabelBgColor:(UISegmentedControl *)seg {
    _label.backgroundColor = _bgColors[seg.selectedSegmentIndex];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *segItems = @[@"red", @"black", @"blue"];
    _bgColors = @[[UIColor redColor],
                  [UIColor blackColor],
                  [UIColor blueColor]];
    
    // 生成实例
    UISegmentedControl *segCtrl = [[UISegmentedControl alloc] initWithItems:segItems];
    
    // 设置控件的位置及尺寸
    segCtrl.frame = CGRectMake(35, 100, 250, 40);
    // 设置默认的文本颜色
    segCtrl.tintColor = [UIColor grayColor];
    // 默认选中第 2 个
    segCtrl.selectedSegmentIndex = 1;
    // 监听值的改变
    [segCtrl addTarget:self action:@selector(changeLabelBgColor:) forControlEvents:UIControlEventValueChanged];
    
    // 生成并设置一个文本控件
    _label = [[UILabel alloc] init];
    _label.frame = CGRectMake(35, 100, 200, 40);
    _label.center = self.view.center;
    _label.textAlignment = NSTextAlignmentCenter;
    _label.text = @"Hello World !";
    _label.textColor = [UIColor whiteColor];
    _label.backgroundColor = _bgColors[segCtrl.selectedSegmentIndex];
    
    [self.view addSubview:segCtrl];
    [self.view addSubview:_label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
