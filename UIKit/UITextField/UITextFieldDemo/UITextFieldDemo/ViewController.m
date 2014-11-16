//
//  ViewController.m
//  UITextFieldDemo
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
    
    // 生成实例
    UITextField *field = [[UITextField alloc] init];
    // 设置代理对象
    field.delegate = self;
    // 设置控件视图的位置及尺寸
    field.frame = CGRectMake(60, 100, 200, 30);
    // 设置占位内容
    field.placeholder = @"Your name: ";
    // 设置控件的边框样式为圆角边框
    field.borderStyle = UITextBorderStyleRoundedRect;
    // 设置控件右侧清除按钮的出现时机：编辑时出现
    field.clearButtonMode = UITextFieldViewModeWhileEditing;
    // 设置文本颜色
    field.textColor = [UIColor lightGrayColor];
    // 设置字体大小
    field.font = [UIFont systemFontOfSize:16];
    // 设置按下return键后的处理类型
    field.returnKeyType = UIReturnKeyDone;
    
    _label = [[UILabel alloc] init];
    _label.frame = CGRectMake(60, 200, 250, 30);
    _label.text = @"Your name is: ";
    _label.textColor = [UIColor grayColor];
    _label.textAlignment = NSTextAlignmentLeft;

    [self.view addSubview:field];
    [self.view addSubview:_label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 调用时机：控件刚获得焦点时
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    textField.backgroundColor = [UIColor orangeColor];
    textField.textColor = [UIColor whiteColor];
    
    return YES;
}

// 调用时机：在控件中输入字符时
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
     _label.text = [@"Your name is: " stringByAppendingString:textField.text];
    
    return YES;
}

// 调用时机：按下回车键时
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    textField.backgroundColor = [UIColor whiteColor];
    textField.textColor = [UIColor lightGrayColor];
    textField.clearButtonMode = UITextFieldViewModeNever;
    textField.text = @"";
    
    return YES;
}

// 调用时机：按下回车键时
- (BOOL)textFieldShouldClear:(UITextField *)textField {
    return YES;
}
@end
