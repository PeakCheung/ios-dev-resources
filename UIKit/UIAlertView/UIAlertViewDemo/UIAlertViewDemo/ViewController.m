//
//  ViewController.m
//  UIAlertViewDemo
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
    
    // 添加一个按钮，用于点击后弹出alert
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    CALayer *btnLayer = btn.layer;
    btn.frame = CGRectMake(0, 0, 200, 50);
    btn.center = self.view.center;
    btn.tintColor = [UIColor lightGrayColor];
    btn.backgroundColor = [UIColor blackColor];
    btnLayer.borderWidth = 2;
    btnLayer.borderColor = [UIColor lightGrayColor].CGColor;
    btnLayer.cornerRadius = 5;
    btnLayer.shadowColor = [UIColor blackColor].CGColor;
    btnLayer.shadowOpacity = 0.5;
    btnLayer.shadowOffset = CGSizeMake(0, 2);
    [btn setTitle:@"alert hello world" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(alert) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 弹出框
- (void)alert {
    // 获取当前设备的操作系统版本
    float version = [[[UIDevice currentDevice] systemVersion] floatValue];
    
    // 从 8.0 开始，UIAlertView已被废弃，改由UIAlertController代替
    if (version < 8.0) {
        // 实例化
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                        message:@"hello world"
                                                       delegate:nil
                                              cancelButtonTitle:@"cancel"
                                              otherButtonTitles:@"ok", nil];
        // 显示
        [alert show];
        
    } else {
        // 实例化
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"hello world" preferredStyle:UIAlertControllerStyleAlert];
        
        // 设置动作标题及类型
        [alert addAction:[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil]];
        [alert addAction:[UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil]];
        
        // 以模态方式呈现 alert 这个ViewController
        // 需要等到当前ViewController载入成功后，才能调用该方法，否则会出现这样的警告：“whose view is not in the window hierarchy! ”
        [self presentViewController:alert animated:YES completion:nil];
    }
}

@end
