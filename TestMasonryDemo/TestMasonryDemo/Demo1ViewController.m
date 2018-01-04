//
//  Demo1ViewController.m
//  TestMasonryDemo
//
//  Created by Robin.Li on 2018/1/4.
//  Copyright © 2018年 TestMasonry. All rights reserved.
//

#import "Demo1ViewController.h"
#import <Masonry/Masonry.h>
#import <MMPlaceHolder/MMPlaceHolder.h>

@interface Demo1ViewController ()

@end

/*
//新增约束
 - (NSArray *)mas_makeConstraints:(void(^)(MASConstraintMaker *make))block;

//更新约束
 - (NSArray *)mas_updateConstraints:(void(^)(MASConstraintMaker *make))block;

//清楚之前的所有约束,只会保留最新的约束
 - (NSArray *)mas_remakeConstraints:(void(^)(MASConstraintMaker *make))block;
*/

@implementation Demo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     __weak typeof (self) weakSelf = self;
    
    UIView *bgView = [UIView new];
    bgView.backgroundColor = [UIColor redColor];
    [bgView showPlaceHolder];
    [self.view addSubview:bgView];
      // 使用mas_makeConstraints添加约束
    
    //大小限制为200的图像
//    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(weakSelf.view);
//        make.size.mas_equalTo(CGSizeMake(200, 200));
//
//    }];
    //边距为10的大小
    
    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(weakSelf.view);
       // make.edges.mas_offset(UIEdgeInsetsMake(10, 10, 10, 10));
       
        // /*
        
        make.top.equalTo(weakSelf.view).with.offset(10);
        make.left.equalTo(weakSelf.view).with.offset(10);
        make.bottom.equalTo(weakSelf.view).with.offset(-10);
        make.right.equalTo(weakSelf.view).with.offset(-10);
         
        // */
    }];
    
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
