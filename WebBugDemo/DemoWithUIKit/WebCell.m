//
//  WebCell.m
//  WebBugDemo
//
//  Created by huangkun on 2017/11/3.
//  Copyright © 2017年 huangkun. All rights reserved.
//

#import "WebCell.h"
#import "WebLoader.h"
#import <WebKit/WebKit.h>

@interface WebCell()
@property (nonatomic, strong) WKWebView *webView;
@end

@implementation WebCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _webView = [WKWebView new];
        [_webView loadHTMLString:WebLoader.shared.html baseURL:nil];
        [self.contentView addSubview:_webView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    _webView.frame = self.contentView.bounds;
}

@end
