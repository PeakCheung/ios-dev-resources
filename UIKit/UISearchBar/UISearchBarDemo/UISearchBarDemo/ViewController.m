//
//  ViewController.m
//  UISearchBarDemo
//
//  Created by xidanjueying on 14/11/27.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGSize viewSize = self.view.bounds.size;
    UISearchBar *searchBar = [[UISearchBar alloc] init];
    searchBar.frame = CGRectMake((viewSize.width - 200) / 2, 50, 200, 50);
    // 占位符
    searchBar.placeholder = @"Search";
    // 默认值
    searchBar.text = @"haha";
    // 设置背景色
    searchBar.barTintColor = [UIColor clearColor];
    // 该属性用于指定搜索条是否有背景，UISearchBarStyleMinimal表示没有背景，且搜索区是半透明的
    searchBar.searchBarStyle = UISearchBarStyleMinimal;
    [self.view addSubview:searchBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
