//
//  WYRegisterViewController.m
//  Notes
//
//  Created by 钱钱 on 14-6-16.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#import "WYRegisterViewController.h"
#import "WYLoginViewController.h"

@interface WYRegisterViewController ()<UITextFieldDelegate>

@end

@implementation WYRegisterViewController

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
    self.registerView = [[[WYRegisterView alloc] initWithFrame:[UIScreen mainScreen].bounds] autorelease];
    self.view = _registerView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.registerView.registerLT.delegate = self;
    
    [self.registerView.saveButton addTarget:self action:@selector(saveButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.registerView.cancel addTarget:self action:@selector(cancelAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark 键盘回收机制
#pragma mark warming-----------------------
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.view endEditing:NO];
    return YES;
}

#pragma mark 监听事件的实现
- (void)saveButtonAction:(UIButton *)sender
{
    
}

- (void)cancelAction:(UIButton *)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
