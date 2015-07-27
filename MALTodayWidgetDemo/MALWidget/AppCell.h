//
//  AppCell.h
//  MALTodayWidgetDemo
//
//  Created by wangtian on 15/7/24.
//  Copyright (c) 2015年 wangtian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppModel.h"

@interface AppCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *appIcon;
@property (weak, nonatomic) IBOutlet UILabel *appName;

- (void)configueCellWithModel:(AppModel *)model;

@end
