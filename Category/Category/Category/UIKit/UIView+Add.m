//
//  UIView+Add.m
//  Category
//
//  Created by MyMac on 16/1/9.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "UIView+Add.h"

@implementation UIView (Add)

//移除views
- (void)removeAllSubViews{
    while (self.subviews.count) {
        [self.subviews.lastObject removeFromSuperview];
    }
}

@end
