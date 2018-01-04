//
//  Demo2ViewController.m
//  TestMasonryDemo
//
//  Created by Robin.Li on 2018/1/4.
//  Copyright © 2018年 TestMasonry. All rights reserved.
//

#import "Demo2ViewController.h"
#import <Masonry/Masonry.h>
#import <MMPlaceHolder/MMPlaceHolder.h>

@interface Demo2ViewController ()

@end

@implementation Demo2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
       __weak typeof (self) weakSelf = self;
    // Do any additional setup after loading the view.
    
   // 2个view横向居中，第二个view距离第一个view间距为10
    UIView *view1 = [UIView new];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(90, 90));
        make.centerX.equalTo(weakSelf.view);
        make.top.width.offset(90);
    }];
    
    UIView *view2= [UIView new];
    view2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view2];
    
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(100, 100));
        make.centerX.equalTo(view1);
        make.top.equalTo(view1.mas_bottom).with.offset(20);
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
