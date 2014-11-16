//
//  ViewController.m
//  UIDatePickerDemo
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
    UIDatePicker *dpDate = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 80, 10, 10)];
    // 设置显示模式
    [dpDate setDatePickerMode:UIDatePickerModeDate];
    
    // 将当前日期对象转换为字符串
    NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
    [dateFormater setDateFormat:@"yyyy-MM-dd"];
    NSString *dateStr = [dateFormater stringFromDate:[dpDate date]];
    
    // 在屏幕上显示当前日期字符串
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 100)];
    label.text =[@"The current date is: " stringByAppendingString:dateStr];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor redColor];
    label.center = self.view.center;
    
    [self.view addSubview:label];
    [self.view addSubview:dpDate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
