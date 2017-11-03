//
//  WebLoader.h
//  WebBugDemo
//
//  Created by huangkun on 2017/11/3.
//  Copyright © 2017年 huangkun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WebLoader : NSObject

@property (nonatomic, strong) NSString *html;

+ (instancetype)shared;

@end
