//
//  AppDelegate.m
//  指纹识别
//
//  Created by 蒋永昌 on 16/4/28.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import "AppDelegate.h"
#import "First.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
//    NSString *key = (NSString *)kCFBundleVersionKey;
//    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[key];

        [[NSBundle mainBundle].infoDictionary setValue:@"2.0" forKey:@"CFBundleVersion"];
    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[@"CFBundleVersion"];
    
            NSString *titleStr = [NSString stringWithFormat:@"新版本%.1f:是否更新？",[currentVersion floatValue]];
            UIAlertView *alert = [[UIAlertView alloc]initWithTitle:titleStr message:@"提示:建议更新版本,继续使用老版本可能存在功能异常" delegate:self cancelButtonTitle:@"不用了" otherButtonTitles:@"去更新", nil];
            [alert show];
//
    
    [[First sharedFirst] say];
    

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
