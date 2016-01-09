//
//  NSString+Extension.h
//  Category
//
//  Created by MyMac on 15/12/25.
//  Copyright © 2015年 MyMac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Extension)

/**
 *  @author yunFei, 15-12-25 16:12:54
 *  计算文字的大小
 *  @param font 字体大小
 *  @param maxW 文字的最大长度
 *  @return 返回文字的尺寸
 */
- (CGSize)sizeWithFont:(UIFont *)font maxW:(CGFloat)maxW;

/**
 *  @author yunFei, 15-12-25 16:12:22
 *  计算文字尺寸
 *  @param font 字体大小
 *  @return 返回文字尺寸
 */
- (CGSize)sizeWithFont:(UIFont *)font;

/**
 *  @author yunFei, 15-12-25 16:12:05
 *  判断是否为手机号码
 *  @return 返回YES  表示为手机号码  返回NO  表示不为手机号码
 */
- (BOOL)isPhoneNumber;

/**
 *  @author yunFei, 15-12-25 17:12:06
 *  判断密码是否符合要求(6-20位密码,不带特殊符号)
 *  @return 符合要求返回YES 否则返回NO
 */
- (BOOL)validatePassword;

/**
 *  @author yunFei, 15-12-25 17:12:16
 *  判断是否为邮箱
 *  @return 是返回YES 否则返回NO
 */
- (BOOL)validateEmail;

/**
 *  @author yunFei, 15-12-25 17:12:48
 *  判断是否为身份证
 *  @return 是返回YES  否则返回NO
 */
- (BOOL)validateIdentityCard;

/**
 *  @author yunFei, 15-12-25 17:12:43
 *  判断是否有特殊符号
 *  @return 是返回YES  否则返回NO
 */
- (BOOL)effectiveSpecialSymbols;


@end
