//
//  WYLostPassword.h
//  Notes
//
//  Created by 钱钱 on 14-6-16.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WYLTView.h"

@interface WYLostPassword : UIView

@property (nonatomic, retain) WYLTView *findPassword; // 找回密码
@property (nonatomic, retain) UILabel *timeLabel;     // 计时器
@property (nonatomic, retain) UIButton *confimButton; // 确定按钮

@end
