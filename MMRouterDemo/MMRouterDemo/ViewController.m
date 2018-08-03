//
//  ViewController.m
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "ViewController.h"
#import "MMRouter.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UITableView *tableView = [UITableView new];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.frame = self.view.bounds;
    tableView.tableFooterView = UIView.new;
    tableView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self protocolList].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [UITableViewCell new];
    cell.textLabel.text = [NSString stringWithFormat:@"%zd", indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSURL *targetUrl = [NSURL URLWithString:self.protocolList[indexPath.row]];
    [[MMRouter sharedInstance] performActionWithUrl:targetUrl completion:nil];
}

- (NSArray *)protocolList {
    return @[@"hostApp://mall/presentMall",
             @"hostApp://mall/presentSpecialTopic?topicId=123",
             @"hostApp://mall/presentGoodsDetail?goodsId=999",
             @"hostApp://forum/presentForum",
             @"hostApp://wallet/presentWallet",];
}

@end
