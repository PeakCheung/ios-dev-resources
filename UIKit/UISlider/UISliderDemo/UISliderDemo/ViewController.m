//
//  ViewController.m
//  UISliderDemo
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
    // 创建并设置滑块
    UISlider *slider=[[UISlider alloc] initWithFrame:CGRectMake(60, 100, 250, 30)];
    slider.minimumValue = 2;
    slider.maximumValue = 50;
    slider.value = 12;
    [slider addTarget:self
               action:@selector(sliderValueChanged:)
     forControlEvents:UIControlEventValueChanged];
    slider.minimumTrackTintColor = [UIColor redColor];
    slider.maximumTrackTintColor = [UIColor greenColor];
    
    // 创建并设置一个只读文本
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(60, 200, 300, 50)];
    self.label.font = [UIFont systemFontOfSize:slider.value];
    self.label.text = @"Hello World";
    self.label.textColor = [UIColor grayColor];
    
    // 显示到屏幕上
    [self.view addSubview:slider];
    [self.view addSubview:self.label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 监听滑块值改变的回调
- (void)sliderValueChanged:(id)sender {
    if ([sender isKindOfClass:[UISlider class]]) {
        UISlider *slider = (UISlider *) sender;
        self.label.font = [UIFont systemFontOfSize:slider.value];
    }
}

@end
