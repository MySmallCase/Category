//
//  UIDevice+Add.h
//  Category
//
//  Created by MyMac on 16/1/9.
//  Copyright © 2016年 MyMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (Add)

@property (nonatomic, readonly) BOOL isPad;

@property (nonatomic, readonly) BOOL isSimulator;

@property (nonatomic, readonly) NSString *machineModelName;

@property (nonatomic, readonly) NSString *machineModel;

+ (float)systemVersion;

+ (NSString *)UUID;

@end
