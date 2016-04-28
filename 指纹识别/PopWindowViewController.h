//
//  PopWindowViewController.h
//  HomeFinder
//
//  Created by zhenguanqing on 16/3/7.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^actionBlock1) (void);
typedef void(^actionBlock2) (void);


@interface PopWindowViewController : UIViewController

/**
 *  弹出一个弹窗控制器 一个选项 一个block
 */
-(void)showAlertWithTitle:(NSString *)title Block:(actionBlock1)block;


/**
 *  弹出一个弹窗控制器 一个选项 一个block (加message)
 */
-(void)showAlertWithTitle:(NSString *)title Message:(NSString *)message Block:(actionBlock1)block;


/**
 *  弹出一个包括三个选项和两个block的控制器
 */
-(void)showAlertWithAction1:(NSString *)action1 Block:(actionBlock1)block1 Action2:(NSString *)action2 Block:(actionBlock2)block2;

/**
 *  添加毛玻璃效果
 *
 *  @param view 父视图
 */
-(void)ProductionOfFrostedGlassForView:(UIView*)view;

/**
 *  判断网络环境
 *
 *  @return 1无网络 2流量 3wifi 4未知
 */
-(int)reachability;

@end
