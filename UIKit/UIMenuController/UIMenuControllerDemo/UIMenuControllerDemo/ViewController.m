//
//  ViewController.m
//  UIMenuControllerDemo
//
//  Created by xidanjueying on 14/11/17.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 生成一个文本控件
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 0, 200, 50);
    label.center = self.view.center;
    label.text = @"Hello World";
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blueColor];
    label.font = [UIFont systemFontOfSize:30];
    // 允许文本控件接收触摸事件
    label.userInteractionEnabled = YES;
    
    // 生成一个“长按”手势实例
    UILongPressGestureRecognizer *longPressGR = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(createMenu:)];
    // 设置长按多久才能触发“长按”手势事件，单位为秒
    longPressGR.minimumPressDuration = 0.1;
    
    // 给当前视图绑定手势
    [self.view addGestureRecognizer:longPressGR];
    // 将label控件添加到当前视图中
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createMenu:(UILongPressGestureRecognizer *)longPressGR {
    // 自定义菜单项
    UIMenuItem * itemPase = [[UIMenuItem alloc] initWithTitle:@"复制" action:@selector(cp:)];
    UIMenuItem * itemTrans = [[UIMenuItem alloc] initWithTitle:@"转发" action:@selector(trans:)];
    UIMenuItem * itemCollect = [[UIMenuItem alloc] initWithTitle:@"收藏" action:@selector(collect:)];
    UIMenuItem * itemJoin = [[UIMenuItem alloc] initWithTitle:@"加入" action:@selector(join:)];
    
    // 获取触发“长按”手势事件的位置
    CGPoint location = [longPressGR locationInView:[longPressGR view]];
    CGRect menuLocation = CGRectMake(location.x, location.y, 0, 0);
    
    // 生成一个menu controller实例
    UIMenuController *menuController = [UIMenuController sharedMenuController];
    // 向menu controller实例中添加菜单项
    menuController.menuItems = @[itemPase, itemTrans, itemCollect, itemJoin];
    // 将menu设置为可见状态（注意：这句是必须的）
    menuController.menuVisible = YES;
    // 设置menu的箭头方向
    menuController.arrowDirection = UIMenuControllerArrowDown;
    // 设置menu在视图中的显示区域
    [menuController setTargetRect:menuLocation inView:[longPressGR view]];
}

// 让当前视图成为第一个响应者（注意：必须设置为YES，否则menu无法显示）
- (BOOL)canBecomeFirstResponder {
    return YES;
}

// 控制menu中菜单项的显示
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    if (action == @selector(cp:) ||
        action == @selector(trans:) ||
        action == @selector(collect:) ||
        action == @selector(join:)) {
        return YES; // 显示自定义的菜单
    }
    return NO; // 隐藏系统默认的菜单
}

- (void)cp:(id)sender {
    
}

- (void)trans:(id)sender {
    
}

- (void)collect:(id)sender {
    
}

- (void)join:(id)sender {
    
}

@end
