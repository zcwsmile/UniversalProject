//
//  LeftMenuView.m
//  MenuDemo
//
//  Created by Lying on 16/6/12.
//  Copyright © 2016年 Lying. All rights reserved.
//
#define ImageviewWidth    18
#define Frame_Width       self.frame.size.width//200

#import "LeftMenuView.h"

@interface LeftMenuView ()<UITableViewDataSource,UITableViewDelegate>

//@property (nonatomic ,strong)UITableView    *contentTableView;

@end

@implementation LeftMenuView

 
-(instancetype)initWithFrame:(CGRect)frame{

    if(self = [super initWithFrame:frame]){
        [self initView];
    }
    return  self;
}

-(void)initView{

    WS(weakSelf)
    
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth * 0.7, KScreenHeight)];
    contentView.backgroundColor = [UIColor redColor];
    [self addSubview:contentView];
    //添加头部-登录和未登录不同
    UIView *headerView = [[UIView alloc] init];
    [contentView addSubview:headerView];
    [headerView setBackgroundColor:[UIColor whiteColor]];
    [headerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(weakSelf).with.offset(0);
        make.width.equalTo(weakSelf);
    }];
    
    
    UIImageView *imageView = [[UIImageView alloc] init];
    [imageView setImage:[UIImage imageNamed:@"Logo"]];
    [headerView addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(headerView);
        make.top.equalTo(headerView.mas_top).with.offset(30);
        make.size.mas_equalTo(CGSizeMake(60, 54));
    }];

    UILabel *lble0 = [[UILabel alloc] init];
    [headerView addSubview:lble0];
    lble0.text = @"SIGN IN OR REGISTER";
    [lble0 setTextAlignment:NSTextAlignmentCenter];
    [lble0 setTextColor:[UIColor appMainColor]];
    [lble0 setFont:FONTBoldSystem(18)];
    UILabel *lble1 = [[UILabel alloc] init];
    [headerView addSubview:lble1];
    lble1.text = @"TO ENJOY YOUR PRIVIGE";
    [lble1 setTextAlignment:NSTextAlignmentCenter];
    [lble1 setTextColor:[UIColor appMainColor]];
    [lble1 setFont:FONTBoldSystem(18)];
    [lble0 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(headerView);
        make.top.equalTo(imageView.mas_bottom).with.offset(13);
        make.size.mas_equalTo(CGSizeMake(contentView.frame.size.width, 20));
    }];
    [lble1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(headerView);
        make.top.equalTo(lble0.mas_bottom).with.offset(1);
        make.size.mas_equalTo(CGSizeMake(contentView.frame.size.width, 20));
    }];
    
    UIImage *imgback = [UIImage imageNamed:@"CartBtn"];
    // 四个数值对应图片中距离上、左、下、右边界的不拉伸部分的范围宽度
    imgback = [imgback resizableImageWithCapInsets:UIEdgeInsetsMake(0, 100, 72, 72) resizingMode:UIImageResizingModeStretch];

    UIButton *btnLogin = [UIButton buttonWithType:UIButtonTypeCustom];
    [headerView addSubview:btnLogin];
    btnLogin.titleLabel.font = FONTSystemSize(17);
    btnLogin.tag = ZCwLeftViewTag_login;
    [btnLogin setTitle:@"Sign in" forState:UIControlStateNormal];
    [btnLogin setBackgroundImage:imgback forState:UIControlStateNormal];
    [btnLogin addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btnLogin mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(headerView);
        make.top.equalTo(lble1.mas_bottom).with.offset(13);
        make.size.mas_equalTo(CGSizeMake(contentView.frame.size.width-40, 36));
    }];

    UIButton *btnRegister = [UIButton buttonWithType:UIButtonTypeCustom];
    [headerView addSubview:btnRegister];
    btnRegister.titleLabel.font = FONTSystemSize(17);
    btnRegister.tag = ZCwLeftViewTag_register;
    [btnRegister setTitle:@"Register" forState:UIControlStateNormal];
    [btnRegister setBackgroundImage:imgback forState:UIControlStateNormal];
    [btnRegister addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btnRegister mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(headerView);
        make.top.equalTo(btnLogin.mas_bottom).with.offset(13);
        make.size.mas_equalTo(btnLogin);
    }];

    UIButton *btnFace = [UIButton buttonWithType:UIButtonTypeCustom];
    [headerView addSubview:btnFace];
    btnFace.titleLabel.font = FONTSystemSize(17);
    btnFace.tag = ZCwLeftViewTag_faceLogin;
    [btnFace setBackgroundImage:[UIImage imageNamed:@"FbIcon"] forState:UIControlStateNormal];
    [btnFace addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [btnFace mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(headerView);
        make.top.equalTo(btnRegister.mas_bottom).with.offset(13);
        make.size.mas_equalTo(CGSizeMake(28, 28));
        make.bottom.equalTo(headerView.mas_bottom).with.offset(-20);
    }];

    //中间tableview
    UITableView *contentTableView        = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) style:UITableViewStylePlain];
    [contentTableView setBackgroundColor:[UIColor whiteColor]];
    contentTableView.dataSource          = self;
    contentTableView.delegate            = self;
    contentTableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    [contentTableView setBackgroundColor:[UIColor whiteColor]];
    contentTableView.separatorStyle      = UITableViewCellSeparatorStyleNone;
    contentTableView.tableFooterView = [UIView new];
//    self.contentTableView = contentTableView;
    [contentView addSubview:contentTableView];

    [contentTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(headerView);
        make.width.equalTo(weakSelf);
        make.top.equalTo(headerView.mas_bottom).with.offset(10);
        make.bottom.equalTo(weakSelf.mas_bottom).with.offset(0);
    }];

    //添加尾部
    UIView *footerView = [[UIView alloc]initWithFrame:CGRectMake(0, self.frame.size.height - 50, Frame_Width, 50)];
    [footerView setBackgroundColor:[UIColor lightGrayColor]];

    [contentView addSubview:footerView];

}

#pragma mark ————btnClicked————
-(void)btnClicked:(UIButton *)btn{
    if([self.customDelegate respondsToSelector:@selector(LeftMenuViewClick:)]){
        [self.customDelegate LeftMenuViewClick:btn.tag];
    }
}


#pragma mark - tableView delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 6;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 45 ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *str = [NSString stringWithFormat:@"LeftView%li",indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:str];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];

    }
    [cell setBackgroundColor:[UIColor whiteColor]];
    [cell.textLabel setTextColor:[UIColor grayColor]];
    
    //    [cell setCellModel:nil indexPath:indexPath];
    //    [cell setBackgroundColor:[UIColor colorWithHexString:ColorBackGround]];
    cell.hidden = NO;
    switch (indexPath.row) {
        case 0:
        {
            [cell.imageView setImage:[UIImage imageNamed:@"person-icon1"]];
            [cell.textLabel setText:@"About"];
        }
            break;
            
        case 1:
        {
            
            [cell.imageView setImage:[UIImage imageNamed:@"person-icon2"]];
            [cell.textLabel setText:@"Tutorial"];
        }
            break;
            
            
        case 2:
        {
            
            [cell.imageView setImage:[UIImage imageNamed:@"person-icon4"]];
            [cell.textLabel setText:@"T&C"];
        }
            break;
            
        case 3:
        {
            
            [cell.imageView setImage:[UIImage imageNamed:@"person-icon5"]];
            [cell.textLabel setText:@"Privacy Policy"];
        }
            break;
            //新增 整车调度
        case 4:{
            
            [cell.imageView setImage:[UIImage imageNamed:@"person-icon10"]];
            [cell.textLabel setText:@"Notification"];
        }
            break;
            
            
        case 5:
        {
            
            [cell.imageView setImage:[UIImage imageNamed:@"person-icon7"]];
            [cell.textLabel setText:@"setting"];
        }
            break;
            
            
        default:
            break;
    }
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if([self.customDelegate respondsToSelector:@selector(LeftMenuViewClick:)]){
        [self.customDelegate LeftMenuViewClick:indexPath.row];
    }
    
}



@end
