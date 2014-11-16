//
//  ViewController.m
//  UIImageViewDemo
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
    
    // 图像url
    NSURL *url = [NSURL URLWithString:@"http://i.mmcdn.cn/simba/img/TB1rgIfGFXXXXavXFXXSutbFXXX.jpg"];
    // 获取图像数据
    UIImage *img = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
    // 生成图像视图，并将图像数据丢到图像视图中
    UIImageView *imgview = [[UIImageView alloc] initWithImage:img];
    // 设置图像视图的位置及大小
    imgview.frame = CGRectMake(30, 100, img.size.width, img.size.height);
    // 设置圆角
    imgview.layer.cornerRadius = img.size.width / 2;
    imgview.layer.masksToBounds = YES;
    
    [self.view addSubview:imgview];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
