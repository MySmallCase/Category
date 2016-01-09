//
//  UIScreen+Add.h
//  Category
//
//  Created by MyMac on 16/1/9.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (Add)

//屏幕的比例
+ (CGFloat)screenScale;

@property (nonatomic, readonly) CGSize sizeInPixel;

@end
