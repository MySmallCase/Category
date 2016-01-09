//
//  UIScrollView+Add.h
//  Category
//
//  Created by MyMac on 16/1/9.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (Add)

//滚动到顶部
- (void)scrollToTop;

//滚动到底部
- (void)scrollToBottom;

//滚动到左边
- (void)scrollToleft;

//滚动到右边
- (void)scrollToRight;

//滚动到顶部(带动画)
- (void)scrollToTopAnimated:(BOOL)animated;

//滚动到底部(带动画)
- (void)scrollToBottomAnimated:(BOOL)animated;

//滚动到左边(带动画)
- (void)scrollToleftAnimated:(BOOL)animated;

//滚动到右边(带动画)
- (void)scrollToRightAnimated:(BOOL)animated;

@end
