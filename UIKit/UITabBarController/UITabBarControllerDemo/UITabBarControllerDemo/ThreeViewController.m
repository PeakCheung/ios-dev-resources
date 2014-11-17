//
//  ThreeViewController.m
//  UITabBarControllerDemo
//
//  Created by xidanjueying on 14/11/17.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UISlider *slider = [[UISlider alloc] init];
    slider.frame = CGRectMake(0, 0, 200, 50);
    slider.center = self.view.center;
    
    [self.view addSubview:slider];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
