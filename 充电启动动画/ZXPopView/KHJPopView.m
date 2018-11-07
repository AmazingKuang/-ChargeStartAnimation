//
//  KHJPopView.m
//  充电启动动画
//
//  Created by GAPSD on 2018/11/7.
//  Copyright © 2018年 GAPSD. All rights reserved.
//

#import "KHJPopView.h"
#import "KHJCircleProgress.h"
@interface KHJPopView ()

@property (nonatomic, retain) KHJCircleProgress *circleProgress;

@end

@implementation KHJPopView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(0, 60, 180, 130)];
        bottomView.backgroundColor = [UIColor whiteColor];
        bottomView.layer.cornerRadius = 8;
        [self addSubview:bottomView];
        
        UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 70, 180, 30)];
        nameLabel.text = @"安全充电启动中";
        nameLabel.font = [UIFont systemFontOfSize:15];
        [bottomView addSubview:nameLabel];
        nameLabel.textAlignment = 1;
        
        UILabel *nameLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 180, 20)];
        nameLabel1.text = @"请耐心等待";
        nameLabel1.font = [UIFont systemFontOfSize:15];
        [bottomView addSubview:nameLabel1];
        nameLabel1.textAlignment = 1;
        self.circleProgress = [[KHJCircleProgress alloc] initWithFrame:CGRectMake(30, 0, 120, 120) progress:0];
        _circleProgress.backgroundColor = [UIColor whiteColor];
        _circleProgress.layer.cornerRadius = 60;
        _circleProgress.progressWidth = 10;
        _circleProgress.bottomColor = [UIColor lightGrayColor];
        _circleProgress.topColor = [UIColor greenColor];
        [self addSubview:_circleProgress];
    }
    return self;
}
- (void)setNumber:(NSInteger)number{
    _number = number;
    _circleProgress.progress = (CGFloat)self.number/KTimeInterval;
}

@end
