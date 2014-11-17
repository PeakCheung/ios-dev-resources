//
//  AppDelegate.m
//  UITabBarControllerDemo
//
//  Created by xidanjueying on 14/11/17.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SecondViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 实例化
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    
    // 生成tabbar item
    UITabBarItem *tab1 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
    UITabBarItem *tab2 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:1];
    UITabBarItem *tab3 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:2];
    UITabBarItem *tab4 = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:3];
    
    // 生成每个tab item对应的view controller
    ViewController *vc1 = [[ViewController alloc] init];
    SecondViewController *vc2 = [[SecondViewController alloc] init];
    ThreeViewController *vc3 = [[ThreeViewController alloc] init];
    FourViewController *vc4 = [[FourViewController alloc] init];
    
    // 关联view controller和tab item
    vc1.tabBarItem = tab1;
    vc2.tabBarItem = tab2;
    vc3.tabBarItem = tab3;
    vc4.tabBarItem = tab4;
    
    // 设置tab1右上角的提示内容
    tab1.badgeValue = @"1";
    // 通过tabbar controller来管理view controller
    tabbarController.viewControllers = @[vc1, vc2, vc3, vc4];
    
    // 将tabbar controller设置为当前窗口的root view controller，这是必须的
    self.window.rootViewController = tabbarController;
    // 设置当前窗口的背景色，这样窗口中的view controller就不用再设置背景色咯
    self.window.backgroundColor = [UIColor whiteColor];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
