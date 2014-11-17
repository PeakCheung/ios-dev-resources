//
//  SecondViewController.m
//  UITabBarControllerDemo
//
//  Created by xidanjueying on 14/11/17.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *imgUrl = [[NSURL alloc] initWithString:@"http://i.mmcdn.cn/simba/img/TB1Xlq3GXXXXXabXFXXSutbFXXX.jpg"];
    NSData *imgData = [[NSData alloc] initWithContentsOfURL:imgUrl];
    UIImage *img = [[UIImage alloc] initWithData:imgData];
    UIImageView *imgView = [[UIImageView alloc] initWithImage:img];
    
    imgView.center = self.view.center;
    imgView.layer.cornerRadius = img.size.width / 2;
    imgView.layer.masksToBounds = YES;
    
    [self.view addSubview:imgView];
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
