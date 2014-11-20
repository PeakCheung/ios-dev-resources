//
//  ViewController.m
//  UITextViewDemo
//
//  Created by xidanjueying on 14/11/20.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 实例化
    UITextView *textView = [[UITextView alloc] init];
    // 设置控件在父视图中的位置及尺寸
    textView.frame = CGRectMake(20, 80, self.view.bounds.size.width * 0.9, 150);
    // 设置背景色
    textView.backgroundColor = [UIColor whiteColor];
    // 设置字体
    textView.font = [UIFont fontWithName:@"Arial" size:16];
    // 设置文本颜色
    textView.textColor = [UIColor grayColor];
    // 设置文本内容
    textView.text = @"天坑是一种喀斯特地形，但其成因一直是未解之谜，科学家进入冰封的西伯利亚末日天坑考察并收集数据，以期解开谜题。小米公司与顺为资本19日联合宣布，双方以18亿元人民币入股爱奇艺，这是小米自创办以来对外的最大单笔投资。天坑是一种喀斯特地形，但其成因一直是未解之谜，科学家进入冰封的西伯利亚末日天坑考察并收集数据，以期解开谜题。小米公司与顺为资本19日联合宣布，双方以18亿元人民币入股爱奇艺，这是小米自创办以来对外的最大单笔投资。";
    // 设置回车键的类型
    textView.returnKeyType = UIReturnKeyDefault;
    // 设置键盘类型
    textView.keyboardType = UIKeyboardTypeDefault;
    // 允许编辑文本
    textView.editable = YES;
    // 允许滚动文本
    textView.scrollEnabled = YES;
    // 设置边框宽度
    textView.layer.borderWidth = 1;
    
    [self.view addSubview:textView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
