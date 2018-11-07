//
//  KHJCircleProgress.h
//  充电启动动画
//
//  Created by GAPSD on 2018/11/7.
//  Copyright © 2018年 GAPSD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KHJCircleProgress : UIView
/** 进度 */
@property (nonatomic, assign) CGFloat progress;
/** 底层颜色 */
@property (nonatomic, strong) UIColor *bottomColor;
/** 顶层颜色 */
@property (nonatomic, strong) UIColor *topColor;
/** 宽度 */
@property (nonatomic, assign) CGFloat progressWidth;


/** 初始化 */
- (instancetype)initWithFrame:(CGRect)frame progress:(CGFloat)progress;
@end
