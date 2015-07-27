//
//  AppCell.m
//  MALTodayWidgetDemo
//
//  Created by wangtian on 15/7/24.
//  Copyright (c) 2015年 wangtian. All rights reserved.
//

#import "AppCell.h"

@implementation AppCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)configueCellWithModel:(AppModel *)model
{
    self.appName.text = model.appName;
}

@end
