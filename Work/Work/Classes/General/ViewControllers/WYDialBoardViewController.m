//
//  WYDialBoardViewController.m
//  Work
//
//  Created by 钱钱 on 14-6-10.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#import "WYDialBoardViewController.h"


@interface WYDialBoardViewController ()<UITextFieldDelegate>

@end

@implementation WYDialBoardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"拨号键";
    }
    return self;

}

- (void)loadView
{
    self.didNotCalls = [[[WYDiaNotCalls alloc] initWithFrame:[UIScreen mainScreen].bounds] autorelease];
    self.view = _didNotCalls;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.view.alpha = 0.7;
    
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"拨号键" image:[UIImage imageNamed:@"icon_board"] tag:0];
    
    for (int i = 0; i < 12; i ++) {
        
        UIButton *button = [self.didNotCalls.subviews objectAtIndex:i];
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    [self.didNotCalls.callButton addTarget:self action:@selector(callButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.didNotCalls.textField.delegate = self;
 
}

#pragma mark callbutton点击事件
- (void)callButtonAction:(UIButton *)sender
{
    
}


#pragma mark 按钮点击事件
- (void)buttonAction:(UIButton *)sender
{
//    self.didNotCalls.textField.text = [NSString stringWithFormat:@"%d", sender.tag + 1];
    
    NSString *str = [NSString stringWithString:self.didNotCalls.textField.text];
    
    if (9 == sender.tag) {
        self.didNotCalls.textField.text = [NSString stringWithFormat:@"%@＊", str];
    } else if (10 == sender.tag) {
        self.didNotCalls.textField.text = [NSString stringWithFormat:@"%@%d", str, 0];
    } else if (11 == sender.tag) {
        self.didNotCalls.textField.text = [NSString stringWithFormat:@"%@#", str];
    } else {
        self.didNotCalls.textField.text = [NSString stringWithFormat:@"%@%d", str, sender.tag +1];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark 键盘收回事件
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
//    [self.view endEditing:YES];
    [textField resignFirstResponder];
    return YES;
}


@end
