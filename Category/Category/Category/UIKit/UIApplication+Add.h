//
//  UIApplication+Add.h
//  Category
//
//  Created by MyMac on 16/1/9.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (Add)

// 应用的 Bundle Name
@property (nonatomic, readonly) NSString *appBundleName;

// 应用的 Bundle ID
@property (nonatomic, readonly) NSString *appBundleID;

// 应用的 Version
@property (nonatomic, readonly) NSString *appVersion;

// 应用的 Build number
@property (nonatomic, readonly) NSString *appBuildVersion;

@end
