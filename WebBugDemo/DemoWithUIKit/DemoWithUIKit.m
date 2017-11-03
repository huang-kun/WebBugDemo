//
//  DemoWithUIKit.m
//  WebBugDemo
//
//  Created by huangkun on 2017/11/3.
//  Copyright © 2017年 huangkun. All rights reserved.
//

#import "DemoWithUIKit.h"
#import "WebCell.h"

@interface DemoWithUIKit () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation DemoWithUIKit

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.rowHeight = 100;
    [_tableView registerClass:[WebCell class] forCellReuseIdentifier:@"WebCell"];
    [self.view addSubview:_tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WebCell" forIndexPath:indexPath];
    return cell;
}

@end
