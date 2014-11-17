//
//  AppDelegate.m
//  UILocalNotificationDemo
//
//  Created by xidanjueying on 14/11/17.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 实例化
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    
    if (notification != nil) {
        NSDate *now = [NSDate date];
        // 从现在开始，10秒以后通知
        notification.fireDate = [now dateByAddingTimeInterval:10];
        // 使用本地时区
        notification.timeZone = [NSTimeZone defaultTimeZone];
        // 设置顶部提示内容
        notification.alertBody = @"顶部提示内容，通知时间到啦";
        // 设置通知提示音，这里使用默认的
        notification.soundName = UILocalNotificationDefaultSoundName;
        // 操作按钮上的文字
        notification.alertAction = @"查看";
        // 这个通知到时间时，你的应用程序右上角显示的数字。
        notification.applicationIconBadgeNumber = 1;
        // 假如你的通知不会在还没到时间的时候手动取消 那下面的两行代码你可以不用写了。
        notification.userInfo = @{@"key":@"value"};
        // 启动这个通知
        [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    }
    
    return YES;
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification*)notification{
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"LocalNotification"
                                                    message:notification.alertBody
                                                   delegate:nil
                                          cancelButtonTitle:@"确定"
                                          otherButtonTitles:@"取消", nil];
    [alert show];
    
    NSDictionary* dic = [[NSDictionary alloc]init];
    //这里可以接受到本地通知中心发送的消息
    dic = notification.userInfo;
    NSLog(@"user info = %@",[dic objectForKey:@"key"]);
    
    // 图标上的数字减1
    //application.applicationIconBadgeNumber -= 1;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // 图标上的数字减1
    //application.applicationIconBadgeNumber -= 1;
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
