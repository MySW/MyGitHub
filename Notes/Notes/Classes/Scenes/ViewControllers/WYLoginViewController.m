//
//  WYLoginViewController.m
//  Notes
//
//  Created by 钱钱 on 14-6-16.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#import "WYLoginViewController.h"

#import "WYRegisterViewController.h"
#import "WYLostPasswordViewController.h"

@interface WYLoginViewController ()<UITextFieldDelegate>

@end

@implementation WYLoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark 设置自定义视图
- (void)loadView
{
    self.loginView = [[[WYLoginView alloc] initWithFrame:[UIScreen mainScreen].bounds] autorelease];
    self.view = _loginView;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.navigationController.navigationBar.hidden = YES;
    
    self.loginView.userName.delegate = self;
    self.loginView.userPassword.delegate = self;

    // 添加监听事件
    [self.loginView.loginButton addTarget:self action:@selector(loginButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.loginView.registerButton addTarget:self action:@selector(registerButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.loginView.lostPasswordButton addTarget:self action:@selector(lostPasswordButtonAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark 键盘收回

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}


#pragma mark ----button监听事件实现
#pragma mark loginButton监听事件实现
- (void)loginButtonAction:(UIButton *)sender
{
    
}

- (void)registerButtonAction:(UIButton *)sender
{
    WYRegisterViewController *registerVC = [[WYRegisterViewController new] autorelease];

    [self.navigationController pushViewController:registerVC animated:YES];
}

- (void)lostPasswordButtonAction:(UIButton *)sender
{
    WYLostPasswordViewController *lostPasswordVC = [WYLostPasswordViewController new];
    
    [self.navigationController pushViewController:lostPasswordVC animated:YES];
    [lostPasswordVC release];
}

@end
