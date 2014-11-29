//
//  ViewController.m
//  UIActionSheetDemo
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
    
    // 添加一个按钮，用于点击后弹出ActionSheet
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
    [btn setTitle:@"show action sheet" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(showActionSheet) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showActionSheet {
    float version = [[[UIDevice currentDevice] systemVersion] floatValue];
    
    // 从 8.0 开始，UIActionSheet已被废弃，改由UIAlertController代替
    if (version < 8.0) {
        // 实例化
        UIActionSheet *as = [[UIActionSheet alloc] initWithTitle:nil
                                                        delegate:nil
                                               cancelButtonTitle:@"取消"
                                          destructiveButtonTitle:@"删除"
                                               otherButtonTitles:@"复制", nil];
        // 显示
        [as showInView:self.view];
    } else {
        // 实例化
        UIAlertController *as = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
        
        // 设置动作的标题及类型
        [as addAction:[UIAlertAction actionWithTitle:@"删除" style:UIAlertActionStyleDestructive handler:nil]];
        [as addAction:[UIAlertAction actionWithTitle:@"复制" style:UIAlertActionStyleDefault handler:nil]];
        [as addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];
        
        // 以模态方式呈现 as 这个ViewController
        // 需要等到当前ViewController载入成功后，才能调用该方法，否则会出现这样的警告：“whose view is not in the window hierarchy! ”
        [self presentViewController:as animated:YES completion:nil];
    }
}

@end
