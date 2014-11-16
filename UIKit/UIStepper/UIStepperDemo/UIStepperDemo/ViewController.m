//
//  ViewController.m
//  UIStepperDemo
//
//  Created by xidanjueying on 14/11/12.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UILabel *label;
@end

@implementation ViewController

- (void)updateCount:(UIStepper *)stepper {
    NSInteger value = stepper.value;
    _label.text = [NSString stringWithFormat:@"%02ld", value];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIStepper *stepper = [[UIStepper alloc] init];
    stepper.frame = CGRectMake(140, 100, 200, 50);
    // YES，表示达到最大值后又会从最小值开始；NO，则达到最大值后，"+"处于禁用状态
    stepper.wraps = YES;
    // YES，表示在用户交互结束前就发送value change事件；NO，则在用户交互结束后才发送
    stepper.continuous = YES;
    // YES，表示一直按住“+”时，值也会不断增加；NO，则值不会变
    stepper.autorepeat = YES;
    // 设置最小值
    stepper.minimumValue = 1;
    // 设置最大值
    stepper.maximumValue = 10;
    // 设置内容颜色
    stepper.tintColor = [UIColor blackColor];
    // 监听值的改变
    [stepper addTarget:self action:@selector(updateCount:) forControlEvents:UIControlEventValueChanged];
    
    _label = [[UILabel alloc] init];
    _label.frame = CGRectMake(0, 0, 200, 50);
    _label.center = self.view.center;
    _label.textAlignment = NSTextAlignmentCenter;
    _label.text = [NSString stringWithFormat:@"%02ld", (NSInteger)stepper.minimumValue];
    _label.textColor = [UIColor redColor];
    _label.font = [UIFont systemFontOfSize:50];
    
    [self.view addSubview:stepper];
    [self.view addSubview:_label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
