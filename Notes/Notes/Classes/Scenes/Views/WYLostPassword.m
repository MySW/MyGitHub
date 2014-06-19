//
//  WYLostPassword.m
//  Notes
//
//  Created by 钱钱 on 14-6-16.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#import "WYLostPassword.h"

@implementation WYLostPassword

- (void)dealloc
{
    [_findPassword release];
    
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
    self.backgroundColor = [UIColor orangeColor];
    self.findPassword = [[WYLTView alloc] initWithFrame:CGRectMake(40, 100, 240, 30) withLabelText:@"邮箱"];
    [self addSubview: _findPassword];
    _findPassword.backgroundColor = [UIColor orangeColor];
    _findPassword.textPlaceholder = @"请输入邮箱";
    [_findPassword release];
 
}

@end
