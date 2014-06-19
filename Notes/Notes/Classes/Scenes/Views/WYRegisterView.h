//
//  WYRegisterView.h
//  Notes
//
//  Created by 钱钱 on 14-6-16.
//  Copyright (c) 2014年 guoming. All rights reserved.
//



#import <UIKit/UIKit.h>
#import "WYLTView.h"

@interface WYRegisterView : UIView

@property (nonatomic, retain) WYLTView *registerLT;  // 注册框
@property (nonatomic, retain) UIButton *saveButton;  // 保存按钮
@property (nonatomic, retain) UIButton *cancel;      // 取消按钮

@end
