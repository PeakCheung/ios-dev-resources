//
//  ViewController.m
//  UISwitchDemo
//
//  Created by xidanjueying on 14/11/12.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    @property UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建switch button
    UISwitch *switchBtn = [[UISwitch alloc] initWithFrame:CGRectMake(50, 100, 200, 200)];
    // 开关默认打开
    [switchBtn setOn:YES];
    // 监听开关的切换
    [switchBtn addTarget:self action:@selector(switchValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    // 创建并设置一个只读文本
    self.label = [[UILabel alloc] init];
    self.label.frame = CGRectMake(50, 100, 200, 200);
    self.label.text = @"status: on";
    self.label.textColor = [UIColor blueColor];
    self.label.font = [UIFont systemFontOfSize:30];
    
    [self.view addSubview:switchBtn];
    [self.view addSubview:self.label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 监听回调
- (void)switchValueChanged:(id)sender {
    if ([sender isKindOfClass:[UISwitch class]]) {
        UISwitch *btn = (UISwitch *) sender;
        self.label.text = btn.on ? @"status: on" : @"status: off";
    }
}

@end
