//
//  WYPersonalCollectionViewController.m
//  Work
//
//  Created by 钱钱 on 14-6-10.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#import "WYPersonalCollectionViewController.h"

@interface WYPersonalCollectionViewController ()

@end

@implementation WYPersonalCollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.tabBarItem = [[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0] autorelease];
    self.title = @"个人收藏";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
