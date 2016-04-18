//
//  QuoteWebView.m
//  QuoteWebViewDemo
//
//  Created by KimTae jun on 2016. 4. 18..
//  Copyright © 2016년 DarrenLine. All rights reserved.
//

#import "FBQuoteWebView.h"

// SDK
#import <FBSDKShareKit/FBSDKShareKit.h>

@interface FBQuoteWebView ()

@property (strong, nonatomic) UIMenuItem *quoteMenuItem;

@end

@implementation FBQuoteWebView

#pragma mark - Initialize

- (instancetype)init
{
    self = [super initWithFrame:CGRectZero];
    if (self) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)initialize
{
    _quoteMenuItem = [[UIMenuItem alloc] initWithTitle:@"Share To Facebook"
                                                action:@selector(shareQuote:)];
    if (![[UIMenuController sharedMenuController].menuItems containsObject:_quoteMenuItem]) {
        NSMutableArray *menuItems = [UIMenuController sharedMenuController].menuItems.mutableCopy;
        if (!menuItems) {
            menuItems = @[].mutableCopy;
        }
        [menuItems addObject:_quoteMenuItem];
        [UIMenuController sharedMenuController].menuItems = menuItems;
    }
}

#pragma mark - Action

- (void)shareQuote:(UIMenuItem *)sender
{
    FBSDKShareLinkContent *content = [[FBSDKShareLinkContent alloc] init];
    content.contentURL = [self currentURL];
    content.quote = [self selectedText];
    
    [FBSDKShareDialog showFromViewController:nil
                                 withContent:content
                                    delegate:nil];
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    if (self.superview) {
        if (action == @selector(shareQuote:)) {
            return YES;
        }
    }
    return [super canPerformAction:action withSender:sender];
}

#pragma mark - Setter

- (void)setMenuTitle:(NSString *)menuTitle
{
    _quoteMenuItem.title = menuTitle;
}

#pragma mark - Getter

- (NSString *)menuTitle
{
    return _quoteMenuItem.title;
}

#pragma mark - Utility

- (NSURL *)currentURL
{
    return self.request.URL;
}

- (NSString *)selectedText
{
    return [self stringByEvaluatingJavaScriptFromString:@"window.getSelection().toString()"];
}

#pragma mark - 

- (void)dealloc
{
    if ([[UIMenuController sharedMenuController].menuItems containsObject:_quoteMenuItem]) {
        NSMutableArray *menuItems = [UIMenuController sharedMenuController].menuItems.mutableCopy;
        [menuItems removeObject:_quoteMenuItem];
        [UIMenuController sharedMenuController].menuItems = menuItems;
    }
}

@end