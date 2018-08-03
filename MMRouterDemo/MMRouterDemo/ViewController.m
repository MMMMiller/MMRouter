//
//  ViewController.m
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "ViewController.h"
#import "MMRouter.h"
#import "MMRouter+AlertAction.h"

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
    [self.view addSubview:tableView];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @[@"协议调用",@"本地调用"][section];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return self.protocolList.count;
    } else {
        return self.localActionList.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [UITableViewCell new];
    if (indexPath.section == 0) {
        cell.textLabel.text = [NSString stringWithFormat:@"%@", self.protocolList[indexPath.row]];
    } else {
        cell.textLabel.text = [NSString stringWithFormat:@"%@", self.localActionList[indexPath.row]];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.section == 0) {
        NSURL *targetUrl = [NSURL URLWithString:self.protocolList[indexPath.row]];
        [[MMRouter sharedInstance] performActionWithUrl:targetUrl completion:nil];
    } else {
        if (indexPath.row == 0) {
            [[MMRouter sharedInstance] MMRouter_presentAlertWithTitle:@"这是弹窗"
                                                              message:@"一个测试弹窗"
                                                        confirmAction:^(NSDictionary *info) {
                                                            NSLog(@"点了确认");
                                                        } cancelAction:^(NSDictionary *info) {
                                                            NSLog(@"点了取消");
                                                        }];
        }
    }
}

- (NSArray *)localActionList {
    return @[@"弹窗"];
}

- (NSArray *)protocolList {
    return @[@"hostApp://mall/presentMall",
             @"hostApp://mall/presentSpecialTopic?topicId=123",
             @"hostApp://mall/presentGoodsDetail?goodsId=999",
             @"hostApp://forum/presentForum",
             @"hostApp://wallet/presentWallet",];
}

@end
