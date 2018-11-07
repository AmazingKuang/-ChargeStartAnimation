//
//  ViewController.m
//  充电启动动画
//
//  Created by GAPSD on 2018/11/7.
//  Copyright © 2018年 GAPSD. All rights reserved.
//

#import "ViewController.h"
#import "KHJPopView.h"
#import "ZJProgressHUD.h"
@interface ViewController ()
@property (nonatomic, assign) NSInteger timeNumber;
@property (nonatomic, retain) KHJPopView *popView;
@property (nonatomic, retain) NSTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *but  = [UIButton buttonWithType:UIButtonTypeSystem];
    but.frame = CGRectMake(50, 100, 80, 40);
    but.backgroundColor = [UIColor greenColor];
    [but setTitle:@"点击" forState:UIControlStateNormal];
    [self.view addSubview:but];
    [but addTarget:self action:@selector(didClickedBut) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didClickedBut{
    self.popView = [[KHJPopView alloc] initWithFrame:CGRectMake(100, self.view.bounds.size.height / 2 - 90, 200, 200)];
    [ZJProgressHUD showCustomHUD:self.popView andAutoHideAfterTime:0];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(popTime) userInfo:nil repeats:YES];
}
- (void)popTime{
    self.timeNumber++;
    if (self.timeNumber == KTimeInterval) {
        self.timeNumber = 0;
        /** 用完定时器销毁 */
        [self.timer invalidate];
        self.timer = nil;
        [ZJProgressHUD hideHUD];
    }else{
        self.popView.number = self.timeNumber;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
