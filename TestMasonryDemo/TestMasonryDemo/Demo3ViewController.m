//
//  Demo3ViewController.m
//  TestMasonryDemo
//
//  Created by Robin.Li on 2018/1/4.
//  Copyright © 2018年 TestMasonry. All rights reserved.
//

#import "Demo3ViewController.h"
#import <Masonry/Masonry.h>

@interface Demo3ViewController ()

@end

@implementation Demo3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
      __weak typeof (self) weakSelf = self;
    
    UIButton *iconBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [iconBtn.layer setCornerRadius:45];
    [iconBtn setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:iconBtn];
    
    [iconBtn mas_makeConstraints:^(MASConstraintMaker *make) {

        make.size.mas_equalTo(CGSizeMake(90, 90));
        make.centerX.equalTo(weakSelf.view);
        make.top.width.offset(90);
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
