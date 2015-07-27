//
//  AppModel.h
//  MALTodayWidgetDemo
//
//  Created by wangtian on 15/7/24.
//  Copyright (c) 2015年 wangtian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppModel : NSObject

@property (nonatomic, copy) NSString *openUrl;
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, copy) NSString *appName;

+ (NSMutableArray *)getAppModelArray;

@end
