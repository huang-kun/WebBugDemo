//
//  DemoWithASDK.m
//  WebBugDemo
//
//  Created by huangkun on 2017/11/3.
//  Copyright © 2017年 huangkun. All rights reserved.
//

#import "DemoWithASDK.h"
#import <AsyncDisplayKit/AsyncDisplayKit.h>
#import "WebCellNode.h"

@interface DemoWithASDK () <ASTableDelegate, ASTableDataSource>
@property (nonatomic, strong) ASTableNode *tableNode;
@end

@implementation DemoWithASDK

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableNode = [[ASTableNode alloc] initWithStyle:UITableViewStylePlain];
    _tableNode.delegate = self;
    _tableNode.dataSource = self;
    [self.view addSubnode:_tableNode];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    _tableNode.frame = self.view.bounds;
}

- (NSInteger)tableNode:(ASTableNode *)tableNode numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (ASCellNodeBlock)tableNode:(ASTableNode *)tableNode nodeBlockForRowAtIndexPath:(NSIndexPath *)indexPath {
    return ^{
        return [WebCellNode new];
    };
}

@end
