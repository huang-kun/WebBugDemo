//
//  WebCellNode.m
//  WebBugDemo
//
//  Created by huangkun on 2017/11/3.
//  Copyright © 2017年 huangkun. All rights reserved.
//

#import "WebCellNode.h"
#import <WebKit/WebKit.h>
#import "WebLoader.h"

@interface WebCellNode()
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, assign) CGFloat screenWidth;
@end

@implementation WebCellNode

- (void)didLoad {
    [super didLoad];
    
    _webView = [WKWebView new];
    [_webView loadHTMLString:WebLoader.shared.html baseURL:nil];
    [self.view addSubview:_webView];
    
    CGFloat screenWidth = UIScreen.mainScreen.bounds.size.width;
    CGRect cellFrame = (CGRect){ 0, 0, screenWidth, 100 };

    _webView.frame = cellFrame;
    self.frame = cellFrame;
}

@end
