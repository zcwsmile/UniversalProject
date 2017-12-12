//
//  HomeViewController.m
//  MiAiApp
//
//  Created by 徐阳 on 2017/5/18.
//  Copyright © 2017年 徐阳. All rights reserved.
//

#import "HomeViewController.h"
#import "RootWebViewController.h"
#import "LoginViewController.h"
#import "MenuView.h"
#import "LeftMenuView.h"


@interface HomeViewController ()<HomeMenuViewDelegate>

@property (nonatomic ,strong)MenuView   * menu;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"C for Crayon";
    
    self.isShowLiftBack = YES;
//    self.tabBarController.tabBar.hidden = YES;
    
    LeftMenuView *demo = [[LeftMenuView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width * 0.7, [[UIScreen mainScreen] bounds].size.height)];
    demo.customDelegate = self;
    
    self.menu = [[MenuView alloc]initWithDependencyView:self.view MenuView:demo isShowCoverView:YES];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem ItemWithImage:[UIImage imageNamed:@"ProfileIcon"] WithHighlighted:[UIImage imageNamed:@"ProfileIcon"] Target:self action:@selector(leftNavAction)];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem ItemWithImage:[UIImage imageNamed:@"WhiteCart"] WithHighlighted:[UIImage imageNamed:@"WhiteCart"] Target:self action:@selector(rightNavAction)];

}

-(void)leftNavAction{
    [self.menu show];
    
}
-(void)rightNavAction{
    [self.menu show];
    
}
#pragma mark —————HomeMenuViewDelegate
-(void)LeftMenuViewClick:(NSInteger)tag{
    [self.menu hidenWithAnimation];
    
    NSLog(@"tag = %lu",tag);
    
    if (tag == ZCwLeftViewTag_login) {
        [self.navigationController pushViewController:[LoginViewController new] animated:YES];
    }
    
}


#pragma mark -  屏幕旋转
//在需要旋转的页面重写以下三个方法 默认不可旋转

-(UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    //当前支持的旋转类型
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

- (BOOL)shouldAutorotate
{
    // 是否支持旋转
    return YES;
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    // 默认进去类型
    return   UIInterfaceOrientationPortrait;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
