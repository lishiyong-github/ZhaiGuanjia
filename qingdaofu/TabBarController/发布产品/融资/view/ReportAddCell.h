//
//  ReportAddCell.h
//  qingdaofu
//
//  Created by zhixiang on 16/5/11.
//  Copyright © 2016年 zhixiang. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AuthenBaseView.h"
#import "LineLabel.h"
#import "BaseLabel.h"

@interface ReportAddCell : UITableViewCell


@property (nonatomic,strong) AuthenBaseView *adCell0;
@property (nonatomic,strong) LineLabel *adLine0;
@property (nonatomic,strong) AuthenBaseView *adCell1;
@property (nonatomic,strong) LineLabel *adLine1;
@property (nonatomic,strong) BaseLabel *adCell2;
@property (nonatomic,strong) LineLabel *adLine2;
@property (nonatomic,strong) BaseLabel *adCell3;
@property (nonatomic,strong) LineLabel *adLine3;
@property (nonatomic,strong) AuthenBaseView *adCell4;
@property (nonatomic,strong) LineLabel *adLine4;
@property (nonatomic,strong) AuthenBaseView *adCell5;
@property (nonatomic,strong) LineLabel *adLine5;
@property (nonatomic,strong) BaseLabel *adCell6;

@property (nonatomic,assign) BOOL didSetupConstarints;

@end
