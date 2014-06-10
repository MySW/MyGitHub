//
//  WYDiaNotCalls.m
//  Work
//
//  Created by 钱钱 on 14-6-10.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#import "WYDiaNotCalls.h"

@implementation WYDiaNotCalls

- (void)dealloc
{
    [_button release];
    [_textField release];
    [_callButton release];
    
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
    for (int i = 0; i < 12; i ++) {
        int line = i % 3;
        int row = i / 3;
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", i]];
        
        self.button = [UIButton buttonWithType:UIButtonTypeCustom];
        _button.frame = CGRectMake(70 + line * 60, 100 + 70 * row , 50, 65);
        
        [_button setImage:image forState:UIControlStateNormal];
        
        [self addSubview:_button];

    }
    
    self.textField = [[[UITextField alloc] initWithFrame:CGRectMake(40, 50, 240, 30)] autorelease];
    _textField.textAlignment = NSTextAlignmentCenter;
    _textField.backgroundColor = [UIColor greenColor];
    [self addSubview:_textField];
    
    self.callButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _callButton.frame = CGRectMake(10, 390, 300, 30);
    _callButton.backgroundColor = [UIColor cyanColor];
    [self addSubview:_callButton];
}

@end
