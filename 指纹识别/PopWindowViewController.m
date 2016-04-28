//
//  PopWindowViewController.m
//  HomeFinder
//
//  Created by zhenguanqing on 16/3/7.
//  Copyright © 2016年 蒋永昌. All rights reserved.
//

#import "PopWindowViewController.h"

@interface PopWindowViewController ()

@end

@implementation PopWindowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/**
 *  弹出一个弹窗控制器 一个选项 一个block
 */
-(void)showAlertWithTitle:(NSString *)title Block:(actionBlock1)block{

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        block();
    }];
    
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:action1];
    [alert addAction:action2];
    
    [self presentViewController:alert animated:YES completion:nil];

}

/**
 *  弹出一个弹窗控制器 一个选项 一个block
 */
- (void)showAlertWithTitle:(NSString *)title Message:(NSString *)message Block:(actionBlock1)block{
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"好" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        block();
    }];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:action1];
    [alert addAction:action2];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}



/**
 *  弹出一个包括三个选项和两个block的控制器
 */
-(void)showAlertWithAction1:(NSString *)action1 Block:(actionBlock1)block1 Action2:(NSString *)action2 Block:(actionBlock2)block2{

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *action11 = [UIAlertAction actionWithTitle:action1 style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        block1();
    }];
    
    UIAlertAction *action22 = [UIAlertAction actionWithTitle:action2 style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        block2();
    }];
    
    UIAlertAction *action33 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:action11];
    [alert addAction:action22];
    [alert addAction:action33];
    
    [self presentViewController:alert animated:YES completion:nil];

}

/**
 *  添加毛玻璃效果
 *
 *  @param view 父视图
 */
-(void)ProductionOfFrostedGlassForView:(UIView*)view{
    
    UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc]initWithEffect:blur];
    effectView.frame = view.bounds;
    [view addSubview:effectView];
    
}




@end
