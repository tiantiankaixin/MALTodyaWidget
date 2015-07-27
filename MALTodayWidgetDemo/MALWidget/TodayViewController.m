//
//  TodayViewController.m
//  MALWidget
//
//  Created by wangtian on 15/7/24.
//  Copyright (c) 2015年 wangtian. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>
#import "AppCell.h"

@interface TodayViewController () <NCWidgetProviding,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation TodayViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configueData];
    [self setUpView];
    // Do any additional setup after loading the view from its nib.
}

- (void)setUpView
{
    CGRect screenFrame = [UIScreen mainScreen].bounds;
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    [self.collectionView registerNib:[UINib nibWithNibName:@"AppCell" bundle:nil] forCellWithReuseIdentifier:@"AppCell"];
    self.preferredContentSize = CGSizeMake(screenFrame.size.width, 200);
}

- (void)configueData
{
    self.dataSource = [AppModel getAppModelArray];
}

- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)defaultMarginInsets
{
    return UIEdgeInsetsZero;
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler
{
    if (completionHandler) {
        completionHandler(NCUpdateResultNewData);
    }
}

#pragma mark - UICollectionView 代理

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(80, 80);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    AppCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"AppCell" forIndexPath:indexPath];
    
    [cell configueCellWithModel:self.dataSource[indexPath.row]];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    AppModel *model = self.dataSource[indexPath.row];
    [self.extensionContext openURL:[NSURL URLWithString:model.openUrl] completionHandler:^(BOOL success) {
        
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
