//
//  SystemMessagesViewController.m
//  qingdaofu
//
//  Created by zhixiang on 16/5/6.
//  Copyright © 2016年 zhixiang. All rights reserved.
//

#import "SystemMessagesViewController.h"

#import "NewsCell.h"

@interface SystemMessagesViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,assign) BOOL didSetupConstraints;
@property (nonatomic,strong) UITableView *sysMessageTableView;

@end

@implementation SystemMessagesViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"系统消息";
    self.navigationItem.leftBarButtonItem = self.leftItem;
    
    [self.view addSubview:self.sysMessageTableView];
    [self.view setNeedsUpdateConstraints];
}

- (void)updateViewConstraints
{
    if (!self.didSetupConstraints) {
        
        [self.sysMessageTableView autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsZero];
        
        self.didSetupConstraints = YES;
    }
    [super updateViewConstraints];
}

- (UITableView *)sysMessageTableView
{
    if (!_sysMessageTableView) {
        _sysMessageTableView = [UITableView newAutoLayoutView];
        _sysMessageTableView.translatesAutoresizingMaskIntoConstraints = YES;
        _sysMessageTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) style:UITableViewStyleGrouped];
        _sysMessageTableView.delegate = self;
        _sysMessageTableView.dataSource = self;
        _sysMessageTableView.backgroundColor = kBackColor;
        _sysMessageTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kBigPadding)];
    }
    return _sysMessageTableView;
}

#pragma mark -
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 75;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"newsList";
    NewsCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[NewsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.selectedBackgroundView = [[UIView alloc] init];
    cell.selectedBackgroundView.backgroundColor = UIColorFromRGB(0xdee8ed);
    
    [cell.typeButton setTitle:@"申请消息" forState:0];
    cell.timeLabel.text = @"2016-12-12 10:10";
    cell.contextLabel.text = @"您发布的融资RZ201601010001有心得申请记录";
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return kBigPadding;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0.1;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
