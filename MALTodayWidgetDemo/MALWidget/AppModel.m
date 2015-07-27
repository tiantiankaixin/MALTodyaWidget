//
//  AppModel.m
//  MALTodayWidgetDemo
//
//  Created by wangtian on 15/7/24.
//  Copyright (c) 2015年 wangtian. All rights reserved.
//

#import "AppModel.h"
#import <UIKit/UIKit.h>


@implementation AppModel


+ (NSMutableArray *)getAppModelArray
{
    NSMutableArray *appArray = [[NSMutableArray alloc] init];
    NSUserDefaults *mySharedDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.MalTodayDemo"];
    NSArray *appInfoArray = [mySharedDefaults objectForKey:@"appInfo"];
    [appInfoArray enumerateObjectsUsingBlock:^(NSDictionary *obj, NSUInteger idx, BOOL *stop) {
        
        [appArray addObject:[self modelWithDic:obj]];
    }];
    return appArray;
}

+ (AppModel *)modelWithDic:(NSDictionary *)dic
{
    AppModel *model = [[AppModel alloc] init];
    model.appName = dic[@"appName"];
    model.openUrl = dic[@"openUrl"];
    return model;
}


@end
