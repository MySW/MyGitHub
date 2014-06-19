//
//  WYLoginView.h
//  Notes
//
//  Created by 钱钱 on 14-6-16.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WYLTView.h"

@interface WYLoginView : UIView

@property (nonatomic, retain) WYLTView *userName;               //用户名
@property (nonatomic, retain) WYLTView *userPassword;           //用户密码

@property (nonatomic, retain) UIButton *loginButton;             //登录按钮
@property (nonatomic, retain) UIButton *lostPasswordButton;     //忘记密码按钮
@property (nonatomic, retain) UIButton *registerButton;          //注册按钮

@end
