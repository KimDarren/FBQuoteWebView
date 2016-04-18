//
//  AppDelegate.m
//  FBQuoteWebViewDemo
//
//  Created by KimTae jun on 2016. 4. 18..
//  Copyright © 2016년 DarrenLine. All rights reserved.
//

#import "AppDelegate.h"

// View controller
#import "DRNWebViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    DRNWebViewController *rootController = [[DRNWebViewController alloc] init];
    
    _window = [[UIWindow alloc] initWithFrame:screenBounds];
    _window.rootViewController = rootController;
    [_window makeKeyAndVisible];
    
    return YES;
}

@end