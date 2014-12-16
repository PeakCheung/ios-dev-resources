//
//  ViewController.m
//  UITableViewControllerDemo
//
//  Created by xidanjueying on 14/11/29.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TableViewController *vc = [[TableViewController alloc] initWithStyle:UITableViewStylePlain];
    [self.view addSubview:vc.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
