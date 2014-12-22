//
//  ViewController.m
//  UITableViewControllerDemo
//
//  Created by xidanjueying on 14/12/21.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 60, 30)];
    button.center = self.view.center;
    button.layer.borderColor = [UIColor lightGrayColor].CGColor;
    button.layer.borderWidth = 1;
    button.layer.cornerRadius = 5;
    [button setTitle:@"进入" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(toSecondVC) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    self.navigationItem.title = @"root";
}

- (void)toSecondVC {
    CustomTableViewController *vc = [[CustomTableViewController alloc] initWithStyle:UITableViewStylePlain];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
