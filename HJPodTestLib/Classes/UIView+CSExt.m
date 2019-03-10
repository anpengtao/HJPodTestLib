//
//  UIView+CSExt.m
//  baseFrame
//
//  Created by PLATOMIX  on 14-6-13.
//  Copyright (c) 2014年 cuishuai. All rights reserved.
//

#import "UIView+CSExt.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (CSExt)

#pragma mark 获取view的宽度
- (CGFloat) width {
    return self.frame.size.width;
}

#pragma mark 设置view的宽度
- (void) setWidth:(CGFloat)width {
    CGRect f = self.frame;
    f.size.width = width;
    self.frame = f;
}

#pragma mark 获取view的高度
- (CGFloat) height {
    return self.frame.size.height;
}

#pragma mark 设置view的高度
- (void) setHeight:(CGFloat)height {
    CGRect f = self.frame;
    f.size.height = height;
    self.frame = f;
}

#pragma mark 获取view的X值
- (CGFloat) x {
    return self.frame.origin.x;
}

#pragma mark 设置view的X值
- (void) setX:(CGFloat)x {
    CGRect f = self.frame;
    f.origin.x = x;
    self.frame = f;
}

#pragma mark 获取view的Y值
- (CGFloat) y {
    return self.frame.origin.y;
}

#pragma mark 设置view的Y值
- (void) setY:(CGFloat)y {
    CGRect f = self.frame;
    f.origin.y = y;
    self.frame = f;
}

- (CGFloat)maxX {
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)maxY {
    return CGRectGetMaxY(self.frame);
}

- (CGFloat)minX {
    return CGRectGetMinX(self.frame);
}

- (CGFloat)minY {
    return CGRectGetMinY(self.frame);
}

- (CGFloat)midX {
    return CGRectGetMidX(self.frame);
}

- (CGFloat)midY {
    return CGRectGetMidY(self.frame);
}


#pragma mark 是否包含某个view
- (BOOL)containsSubView:(UIView *)subView {
    for (UIView *view in [self subviews]) {
        if ([view isEqual:subView]) {
            return YES;
        }
    }
    return NO;
}

#pragma mark 是否包含某个class
- (BOOL)containsSubViewOfClassType:(Class)class {
    for (UIView *view in [self subviews]) {
        if ([view isMemberOfClass:class]) {
            return YES;
        }
    }
    return NO;
}



///设置view的边框和圆角
- (void)setBorderWidth:(CGFloat)borderwidth borderColor:(UIColor *)borderColor cornerRadius:(CGFloat)cornerRadius; {
    if (cornerRadius > 0) {
        self.layer.cornerRadius = cornerRadius;
        self.layer.masksToBounds = YES;
    }
    if (borderwidth > 0) {
        self.layer.borderColor = borderColor.CGColor;
        self.layer.borderWidth = borderwidth;
    }
}
///设置view的圆角
- (void)setLayerCornerRadius:(CGFloat)cornerRadius ;    {
    if (cornerRadius == 0) {
        return;
    } else {
        self.layer.cornerRadius = cornerRadius;
        self.layer.masksToBounds = YES;
    }
}



@end
