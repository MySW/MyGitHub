//
//  WYLoginView.m
//  Notes
//
//  Created by 钱钱 on 14-6-16.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#define ZMR 35   //左边框距离
#define HMR 30   //中间间距和text高
#define LTWIDTH 240

#import "WYLoginView.h"

@implementation WYLoginView

- (void)dealloc
{
    [_userName release];
    [_userPassword release];
    [_loginButton release];
    [_lostPasswordButton release];
    [_registerButton release];
    
    [super dealloc];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self addAllviews];
    }
    return self;
}

#pragma mark 添加所有控件
- (void)addAllviews
{
    self.backgroundColor = [UIColor cyanColor];
    self.userName = [[[WYLTView alloc] initWithFrame:CGRectMake(ZMR, 100, LTWIDTH, HMR) withLabelText:@"用户名"] autorelease];
    [self addSubview:_userName];
    
    self.userPassword = [[[WYLTView alloc] initWithFrame:CGRectMake(ZMR, CGRectGetMaxY(_userName.frame) + HMR, LTWIDTH, HMR) withLabelText:@"密 码"] autorelease];
    [self addSubview:_userPassword];
    [_userPassword release];
    
    //问题一： 如何
    self.loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _loginButton.frame = CGRectMake(ZMR, CGRectGetMaxY(_userPassword.frame) +14, 60, HMR);
    [_loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [self addSubview:_loginButton];

    self.registerButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _registerButton.frame = CGRectMake(CGRectGetMaxX(_loginButton.frame) + HMR, CGRectGetMaxY(_userPassword.frame), CGRectGetWidth(_loginButton.frame), CGRectGetWidth(_loginButton.frame));
    [_registerButton setTitle:@"注册" forState:UIControlStateNormal];
    [self addSubview:_registerButton];
    
    self.lostPasswordButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _lostPasswordButton.frame = CGRectMake(CGRectGetMaxX(_registerButton.frame) + HMR, CGRectGetMaxY(_userPassword.frame), CGRectGetWidth(_loginButton.frame), CGRectGetWidth(_loginButton.frame));
    [_lostPasswordButton setTitle:@"忘记密码" forState:UIControlStateNormal];
    [self addSubview:_lostPasswordButton];
 
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
