//
//  ViewController.m
//  UISearchBarDemo
//
//  Created by xidanjueying on 14/11/27.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 实例并初始化
    UISearchBar *searchBar = [[UISearchBar alloc] init];
    // 设置位置及尺寸
    searchBar.frame = CGRectMake((self.view.bounds.size.width - 300) / 2, 50, 300, 50);
    // 占位符
    searchBar.placeholder = @"Search";
    // 指定搜索条的外观，UISearchBarStyleMinimal表示没有背景，且搜索区是半透明的
    searchBar.searchBarStyle = UISearchBarStyleMinimal;
    // 设置委托对象
    searchBar.delegate = self;
    
    // 文本
    self.label = [[UILabel alloc] init];
    self.label.frame = CGRectMake(0, 0, 200, 50);
    self.label.center = self.view.center;
    self.label.text = @"这里会显示搜索框中输入的文本";
    self.label.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:searchBar];
    [self.view addSubview:self.label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    self.label.text = [NSString stringWithFormat:@"你搜索是：%@", searchText];
}

@end
