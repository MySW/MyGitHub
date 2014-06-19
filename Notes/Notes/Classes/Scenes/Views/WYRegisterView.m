//
//  WYRegisterView.m
//  Notes
//
//  Created by 钱钱 on 14-6-16.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#define ZMR 35   //左边框距离
#define HMR 50   //中间间距和text高
#define LTWIDTH 240
#define LTHEGHT 30

#import "WYRegisterView.h"

@implementation WYRegisterView

- (void)dealloc
{
    [_registerLT release];
    [_saveButton release];
    [_cancel release];
    
    [super dealloc];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self addAllViews];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)addAllViews
{
    // 文本框添加
    self.backgroundColor = [UIColor cyanColor];
    NSArray *array = @[@"用户名", @"密码", @"确认密码", @"邮箱"];
   
    for (int i = 0; i < array.count; i ++) {
        
        _registerLT.tag = i;
        self.registerLT = [[WYLTView alloc] initWithFrame:CGRectMake(ZMR, 60 + HMR * i, LTWIDTH, LTHEGHT) withLabelText:[array objectAtIndex:i]];
        [self addSubview:_registerLT];
        [_registerLT release];
    }
    
    // 添加按钮
    self.saveButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _saveButton.frame = CGRectMake(210, 360, 60, 30);
    [_saveButton setTitle:@"保存" forState:UIControlStateNormal];
    _saveButton.layer.cornerRadius = 10;
    _saveButton.backgroundColor = [UIColor greenColor];
    [self addSubview:_saveButton];
    
    self.cancel = [UIButton buttonWithType:UIButtonTypeSystem];
    _cancel.frame = CGRectMake(50, 360, 60, 30);
    [_cancel setTitle:@"取消" forState:UIControlStateNormal];
    _cancel.layer.cornerRadius = 10;
    _cancel.backgroundColor = [UIColor greenColor];
    [self addSubview:_cancel];
    
    
}

@end
