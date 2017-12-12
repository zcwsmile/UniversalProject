//
//  NickNameLbel.m
//  MiAiApp
//
//  Created by 徐阳 on 2017/6/13.
//  Copyright © 2017年 徐阳. All rights reserved.
//

#import "NickNameLbel.h"

@interface NickNameLbel()

@property(nonatomic, strong) UILabel *nickNameLbl;//昵称
@property(nonatomic, strong) YYLabel *sexLbl;//性别 和年龄
@property(nonatomic, strong) YYLabel *levelLbl;//等级

@end

@implementation NickNameLbel

- (void)setNickName:(NSString *)nickName sex:(UserGender)sex age:(NSInteger)age level:(NSInteger)level{
    self.nickNameLbl.text = nickName;
    
    NSMutableAttributedString *attri = [[NSMutableAttributedString alloc] initWithString:NSStringFormat(@"%ld",age)];
    UIImage *img = sex==UserGenderMale ? ImageWithFile(@"man") : ImageWithFile(@"woman");
    CGSize size = CGSizeMake(img.size.width+2, img.size.height);
    NSMutableAttributedString *attachText1= [NSMutableAttributedString attachmentStringWithContent:img contentMode:UIViewContentModeLeft attachmentSize:size alignToFont:[UIFont systemFontOfSize:18] alignment:YYTextVerticalAlignmentCenter];
    
    [attri insertAttributedString:attachText1 atIndex:0];
    attri.color = [UIColor whiteColor];
    attri.font = FONTSystemSize(12);

    if (sex == 0 && level == 0 && age == 0) {
        [self.nickNameLbl mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.top.right.bottom.mas_equalTo(0);
        }];
    }else{
        [self.nickNameLbl mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.left.top.bottom.mas_equalTo(0);
        }];
        self.sexLbl.attributedText = attri;
        self.levelLbl.text = NSStringFormat(@"LV%ld",level);
    }
    
}

-(UILabel *)nickNameLbl{
    if (!_nickNameLbl) {
        _nickNameLbl = [UILabel new];
        _nickNameLbl.font = FONTSystemSize(16);
        _nickNameLbl.textColor = [UIColor whiteColor];
        [self addSubview:_nickNameLbl];
        
        [_nickNameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.bottom.mas_equalTo(0);
        }];
    }
    return _nickNameLbl;
}

-(YYLabel *)sexLbl{
    if(!_sexLbl){
        _sexLbl = [YYLabel new];
        _sexLbl.font = FONTSystemSize(12);
        _sexLbl.textColor = [UIColor whiteColor];
        _sexLbl.backgroundColor = [UIColor redColor];
        _sexLbl.textContainerInset = UIEdgeInsetsMake(1, 3, 1, 3);
        
        [self addSubview:_sexLbl];
        
        [_sexLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_nickNameLbl.mas_right).offset(8);
            make.centerY.mas_equalTo(self);
            make.height.mas_equalTo(15);
            make.top.mas_equalTo(0);
        }];
    }
    return _sexLbl;
}

-(YYLabel *)levelLbl{
    if (!_levelLbl) {
        _levelLbl = [YYLabel new];
        _levelLbl.font = FONTSystemSize(12);
        _levelLbl.textColor = [UIColor whiteColor];
        _levelLbl.backgroundColor = [UIColor blueColor];
        _levelLbl.textContainerInset = UIEdgeInsetsMake(1, 3, 1, 3);
        
        [self addSubview:_levelLbl];
        
        [_levelLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(_sexLbl.mas_right).offset(5);
            make.centerY.mas_equalTo(self);
            make.height.mas_equalTo(15);
            make.right.mas_equalTo(0);
            make.top.mas_equalTo(0);
        }];

    }
    return _levelLbl;
}

@end
