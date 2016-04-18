//
//  DRNWebViewController.m
//  FBQuoteWebViewDemo
//
//  Created by KimTae jun on 2016. 4. 18..
//  Copyright © 2016년 DarrenLine. All rights reserved.
//

#import "DRNWebViewController.h"

// View
#import "FBQuoteWebView.h"

@interface DRNWebViewController ()

@property (strong, nonatomic) FBQuoteWebView *webView;

@end

@implementation DRNWebViewController

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // It's just a demo URL. (NYTimes)
    NSString *demoURLString = @"http://www.nytimes.com/2016/04/15/us/california-surfers-look-to-courts-for-relief-against-bay-boys.html?hp&action=click&pgtype=Homepage&clickSource=story-heading&module=photo-spot-region&region=top-news&WT.nav=top-news";
    NSURL *demoURL = [NSURL URLWithString:demoURLString];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:demoURL];
    
    _webView = [[FBQuoteWebView alloc] init];
    [_webView loadRequest:request];
    
//    You can set the CUSTOM TITLE by uncommenting a line below.
//    _webView.menuTitle = @"Share Quotes";
    
    [self.view addSubview:_webView];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    CGRect statusBarFrame = [UIApplication sharedApplication].statusBarFrame;
    CGFloat statusBarHeight = CGRectGetHeight(statusBarFrame);
    
    _webView.frame = CGRectMake(.0f,
                                statusBarHeight,
                                CGRectGetWidth(self.view.frame),
                                CGRectGetHeight(self.view.frame) - statusBarHeight);
}

#pragma mark - 

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}

@end