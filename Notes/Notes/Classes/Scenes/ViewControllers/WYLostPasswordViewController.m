//
//  WYLostPasswordViewController.m
//  Notes
//
//  Created by 钱钱 on 14-6-17.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#import "WYLostPasswordViewController.h"

@interface WYLostPasswordViewController ()

@end

@implementation WYLostPasswordViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView
{
    self.findPasswordView = [[[WYLostPassword alloc] initWithFrame:[UIScreen mainScreen].bounds] autorelease];
    self.view = _findPasswordView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
