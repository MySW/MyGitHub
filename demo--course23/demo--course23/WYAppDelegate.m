//
//  WYAppDelegate.m
//  demo--course23
//
//  Created by 钱钱 on 14-6-13.
//  Copyright (c) 2014年 guoming. All rights reserved.
//

#import "WYAppDelegate.h"

@implementation WYAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /*
    
    //第一种方法
    
//    NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(text:) object:@"object"];
//    [thread start];
    
//    NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(text) object:nil];
//    [thread start];

//    [NSThread detachNewThreadSelector:@selector(text) toTarget:self withObject:nil];
    
    /****第二种方式 ****/
//    NSInvocationOperation *invocationOperation = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(text) object:nil];
    
    /***手动启动子线程***/
//    [invocationOperation start];
    
    
//    NSBlockOperation *blockOperation = [NSBlockOperation blockOperationWithBlock:^{
//        NSLog(@"%@", [NSThread currentThread]);
//    }];
//    [blockOperation start];
    
    /****线程队列*******（不需要手动启动）*/
//    NSOperationQueue *queue =[[NSOperationQueue alloc] init];
//    queue.maxConcurrentOperationCount = 1;
//    [queue addOperation:invocationOperation];
//    [queue addOperation:blockOperation];
    
    /*
    for (int i = 0; i < 20; i ++) {
    
        NSInvocationOperation *operation1 = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(aa) object:nil];
        [queue addOperation:operation1];
        
        NSInvocationOperation *operation = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(bb) object:nil];
        
    }
    */
    
    
    /*****************第三中方法*********************/
    [self performSelectorInBackground:@selector(aa)withObject:nil];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}


#pragma mark - 实现线程是可以重用的
#pragma  mark aa的执行事件
- (void)aa
{
    @autoreleasepool {
        NSLog(@"%@", [NSThread currentThread]);
        for (int i = 0; i < 10000; i ++) {
            NSLog(@"%d", i);
        }
    }
}

#pragma  mark bb的执行事件
- (void)bb
{
    @autoreleasepool {
        NSLog(@"%@", [NSThread currentThread]);
    }
}

#pragma mark
- (void)text
{
    @autoreleasepool {
//        NSLog(@"%@", [NSThread currentThread]);
//        
//        // 拿到当前的线程
//        NSLog(@"%d", [[NSThread currentThread] isMainThread]);
        for (int i = 0; i < 1000; i ++) {
            NSLog(@"text = %d", i);
        }
    }
}


#pragma mark 实现子线程的方法 为主线程提供时间
- (void)text:(id)sender
{
    @autoreleasepool {
        for (int i = 0; i < 100000; i ++) {
            NSLog(@"%d", i);
            //        printfln(@"%d", i);
        }
        NSLog(@"%@", sender);
    }
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
