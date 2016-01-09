//
//  UIScreen+Add.m
//  Category
//
//  Created by MyMac on 16/1/9.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import "UIScreen+Add.h"
#import "UIDevice+Add.h"

@implementation UIScreen (Add)

//屏幕比例
+ (CGFloat)screenScale {
    static CGFloat screenScale = 0.0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if ([NSThread isMainThread]) {
            screenScale = [[UIScreen mainScreen] scale];
        } else {
            dispatch_sync(dispatch_get_main_queue(), ^{
                screenScale = [[UIScreen mainScreen] scale];
            });
        }
    });
    return screenScale;
}

- (CGSize)sizeInPixel {
    CGSize size = CGSizeZero;
    
    if ([[UIScreen mainScreen] isEqual:self]) {
        NSString *model = [UIDevice currentDevice].machineModel;
        if ([model hasPrefix:@"iPhone"]) {
            if ([model hasPrefix:@"iPhone1"]) size = CGSizeMake(320, 480);
            else if ([model hasPrefix:@"iPhone2"]) size = CGSizeMake(320, 480);
            else if ([model hasPrefix:@"iPhone3"]) size = CGSizeMake(640, 960);
            else if ([model hasPrefix:@"iPhone4"]) size = CGSizeMake(640, 960);
            else if ([model hasPrefix:@"iPhone5"]) size = CGSizeMake(640, 1136);
            else if ([model hasPrefix:@"iPhone6"]) size = CGSizeMake(640, 1136);
            else if ([model hasPrefix:@"iPhone7,1"]) size = CGSizeMake(1080, 1920);
            else if ([model hasPrefix:@"iPhone7,2"]) size = CGSizeMake(750, 1334);
        } else if ([model hasPrefix:@"iPod"]) {
            if ([model hasPrefix:@"iPod1"]) size = CGSizeMake(320, 480);
            else if ([model hasPrefix:@"iPod2"]) size = CGSizeMake(320, 480);
            else if ([model hasPrefix:@"iPod3"]) size = CGSizeMake(320, 480);
            else if ([model hasPrefix:@"iPod4"]) size = CGSizeMake(640, 960);
            else if ([model hasPrefix:@"iPod5"]) size = CGSizeMake(640, 1136);
        } else if ([model hasPrefix:@"iPad"]) {
            if ([model hasPrefix:@"iPad1"]) size = CGSizeMake(768, 1024);
            else if ([model hasPrefix:@"iPad2"]) size = CGSizeMake(768, 1024);
            else if ([model hasPrefix:@"iPad3"]) size = CGSizeMake(1536, 2048);
            else if ([model hasPrefix:@"iPad4"]) size = CGSizeMake(1536, 2048);
            else if ([model hasPrefix:@"iPad5"]) size = CGSizeMake(1536, 2048);
        }
    }
    
    if (CGSizeEqualToSize(size, CGSizeZero)) {
        if ([self respondsToSelector:@selector(nativeBounds)]) {
            size = self.nativeBounds.size;
        } else {
            size = self.bounds.size;
            size.width *= self.scale;
            size.height *= self.scale;
        }
        if (size.height < size.width) {
            CGFloat tmp = size.height;
            size.height = size.width;
            size.width = tmp;
        }
    }
    return size;
}


@end
