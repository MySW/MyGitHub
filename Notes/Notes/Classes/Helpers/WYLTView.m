//
//  WYLTView.m
//  Notes
//
//  Created by 钱钱 on 14-6-16.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#import "WYLTView.h"

@implementation WYLTView

#pragma mark - 重写dealloc方法
- (void)dealloc
{
    [_label release];
    [_textField release];
    
    [super dealloc];
}

#pragma mark 重写initWithFrame:
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor cyanColor];
        
        // 添加上label
        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width / 3, frame.size.height)];
        _label.backgroundColor = [UIColor clearColor];
        _label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_label];
        
        // 添加TextField
        _textField = [[UITextField alloc] initWithFrame:CGRectMake(frame.size.width / 3, 0, frame.size.width / 3 * 2, frame.size.height)];
        _textField.borderStyle = UITextBorderStyleRoundedRect;
        [self addSubview:_textField];
        
    }
    return self;
}


#pragma mark - 重写setter和getter方法
#pragma mark labelText
- (void)setLabelText:(NSString *)labelText
{
    _label.text = labelText;
}
- (NSString *)labelText
{
    return _label.text;
}


#pragma mark labelTextColor 的 setter方法
- (void)setLabelTextColor:(UIColor *)labelTextColor
{
    _label.textColor = labelTextColor;
}

#pragma mark textFieldText
- (void)setTextFieldText:(NSString *)textFieldText
{
    _textField.text = textFieldText;
}
- (NSString *)textFieldText
{
    return _textField.text;
}

#pragma mark textFieldPlaceholder
- (void)setTextPlaceholder:(NSString *)textPlaceholder
{
    _textField.placeholder = textPlaceholder;
}
- (NSString *)textPlaceholder
{
    return _textField.placeholder;
}

#pragma mark secureTextEntry
- (void)setSecureTextEntry:(BOOL)secureTextEntry
{
    _textField.secureTextEntry = secureTextEntry;
}
- (BOOL)isSecureTextEntry
{
    return _textField.secureTextEntry;
}

#pragma mark delegate
- (void)setDelegate:(id<UITextFieldDelegate>)delegate
{
    _textField.delegate = delegate;
}


#pragma mark 实现初始化方法
- (instancetype)initWithFrame:(CGRect)frame
                withLabelText:(NSString *)text
{
    self = [self initWithFrame:frame];
    if (self) {
        _label.text = text;
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

@end
