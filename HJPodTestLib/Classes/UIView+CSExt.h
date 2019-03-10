//
//  UIView+CSExt.h
//  baseFrame
//
//  Created by PLATOMIX  on 14-6-13.
//  Copyright (c) 2014年 cuishuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CSExt)

//设置宽高width, height和位置x, y
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;

//快速获取相对数值
- (CGFloat)maxX;
- (CGFloat)maxY;
- (CGFloat)minX;
- (CGFloat)minY;
- (CGFloat)midX;
- (CGFloat)midY;

//是否包含某个view
- (BOOL)containsSubView:(UIView *)subView;
//是否包含某个class
- (BOOL)containsSubViewOfClassType:(Class)class;
//设置圆角
//- (void)setCornerRadion_radii:(CGSize)radiiSize;


///设置view的边框和圆角
- (void)setBorderWidth:(CGFloat)borderwidth borderColor:(UIColor *)borderColor cornerRadius:(CGFloat)cornerRadius;
//当前view添加底部横线
//- (UIView *)addBottomGrayLineView_distanceLeft:(CGFloat)leftFloat;
///设置view的四个圆角
- (void)setLayerCornerRadius:(CGFloat)cornerRadius ;
///设置view的部分圆角  UIRectCornerTopRight | UIRectCornerBottomRight|
//- (void)setPartCorner_Radius:(CGFloat)cornerRadius andUIRectCorner:(UIRectCorner)corners;


@end
