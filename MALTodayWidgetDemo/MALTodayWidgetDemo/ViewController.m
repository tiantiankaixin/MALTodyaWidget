//
//  ViewController.m
//  MALTodayWidgetDemo
//
//  Created by wangtian on 15/7/24.
//  Copyright (c) 2015年 wangtian. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUpView];
    [self addData];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - 设置视图
- (void)setUpView
{
    self.preferredContentSize = CGSizeMake(0, 200);
}

- (void)addData
{
    NSUserDefaults *mySharedDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.MalTodayDemo"];
    
    NSDictionary *qq = @{@"appName":@"QQ",@"openUrl":@"mqq://"};
    NSDictionary *wx = @{@"appName":@"微信",@"openUrl":@"mqq://"};
    
    NSArray *appInfoArray = @[qq,wx];
    
    [mySharedDefaults setObject:appInfoArray forKey:@"appInfo"];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
