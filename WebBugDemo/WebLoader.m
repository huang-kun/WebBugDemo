//
//  WebLoader.m
//  WebBugDemo
//
//  Created by huangkun on 2017/11/3.
//  Copyright © 2017年 huangkun. All rights reserved.
//

#import "WebLoader.h"

@implementation WebLoader

+ (instancetype)shared {
    static WebLoader *loader = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        loader = [self new];
    });
    return loader;
}

- (NSString *)html {
    if (!_html) {
        NSString *path = [NSBundle.mainBundle pathForResource:@"web" ofType:@"html"];
        _html = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    }
    return _html;
}

@end
