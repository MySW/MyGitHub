//
//  WYDialBoardViewController.m
//  Work
//
//  Created by 钱钱 on 14-6-10.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#import "WYDialBoardViewController.h"

@interface WYDialBoardViewController ()

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
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"拨号键" image:[UIImage imageNamed:@"icon_board"] tag:0];
    
    for (int i = 0; i < 12; i ++) {
        
        UIButton *button = [self.didNotCalls.subviews objectAtIndex:i];
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
 
}


- (void)buttonAction:(UIButton *)sender
{
    for (int i = 0; i < 12; i ++) {
    
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
