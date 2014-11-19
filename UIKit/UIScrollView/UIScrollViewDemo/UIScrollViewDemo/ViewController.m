//
//  ViewController.m
//  UIScrollViewDemo
//
//  Created by xidanjueying on 14/11/19.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UIScrollView *scrollView;
@property UIPageControl *pageControl;
@property CGSize viewSize;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 显示在scroll view中的图像
    NSArray *imgs = @[@"img1.jpg", @"img2.jpg", @"img3.jpg", @"img4.jpg", @"img5.jpg"];
    NSInteger imgCount = [imgs count];
    
    // 当前视图的大小
    self.viewSize = self.view.frame.size;
    NSInteger viewWidth = self.viewSize.width;
    NSInteger viewHeight = self.viewSize.height;
    
    // 实例化
    self.scrollView = [[UIScrollView alloc] init];
    // 设置控件矩形框的位置及大小
    self.scrollView.frame = CGRectMake(0, 0, viewWidth, viewHeight);
    // 设置scroll view滚动范围的大小
    self.scrollView.contentSize = CGSizeMake(viewWidth * imgCount, viewHeight);
    // 开启分页，开启分页后，则每次只会滚动一张子视图，否则会连续滚动多张
    self.scrollView.pagingEnabled = YES;
    // 隐藏水品滚动条
    self.scrollView.showsHorizontalScrollIndicator = NO;
    // 隐藏垂直滚动条
    self.scrollView.showsVerticalScrollIndicator = NO;
    // 开启弹簧效果，即移出一段距离后松开手指，视图会弹回去
    self.scrollView.bounces = YES;
    // 开启滚动效果
    self.scrollView.scrollEnabled = YES;
    // 将当前对象设置scroll view的委托对象
    self.scrollView.delegate = self;

    // 生成5张图像并添加到scroll view中
    for (int i = 0; i < imgCount; i++) {
        UIImageView *imgView = [[UIImageView alloc] init];
        UIImage *img = [UIImage imageNamed:imgs[i]];
        CGSize imgSize = img.size;
        NSInteger imgWidth = imgSize.width;
        NSInteger imgHeight = imgSize.height;
        
        imgView.frame = CGRectMake(viewWidth * i + (viewWidth - imgWidth) / 2,
                                   (viewHeight - imgHeight) / 2,
                                   imgWidth,
                                   imgHeight);
        imgView.image = img;
        
        [self.scrollView addSubview:imgView];
    }
    
    // 生成分页控件
    self.pageControl = [[UIPageControl alloc] init];
    self.pageControl.frame = CGRectMake((viewWidth - 200) / 2, viewHeight - 150, 200, 50);
    self.pageControl.backgroundColor = [UIColor lightGrayColor];
    self.pageControl.numberOfPages = imgCount;
    self.pageControl.layer.cornerRadius = 10;

    [self.view addSubview:self.pageControl];
    [self.view addSubview:self.scrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    // 当前视图滚动完成时，更新分页指示器
    self.pageControl.currentPage = self.scrollView.contentOffset.x / self.view.frame.size.width;
}

@end
