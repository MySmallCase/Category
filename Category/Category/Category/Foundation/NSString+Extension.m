//
//  NSString+Extension.m
//  Category
//
//  Created by MyMac on 15/12/25.
//  Copyright © 2015年 MyMac. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

/**
 *  @author yunFei, 15-12-25 16:12:26
 *  计算文字大小
 *  @param font 文字字体
 *  @param maxW 最长长度
 *  @return 返回文字尺寸
 */
- (CGSize)sizeWithFont:(UIFont *)font maxW:(CGFloat)maxW{
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = font;
    CGSize maxSize = CGSizeMake(maxW, MAXFLOAT);
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
    
}

/**
 *  @author yunFei, 15-12-25 16:12:28
 *  @param font 文字字体
 *  @return 返回文字尺寸
 */
- (CGSize)sizeWithFont:(UIFont *)font{
    return [self sizeWithFont:font maxW:MAXFLOAT];
}

/**
 *  @author yunFei, 15-12-25 16:12:05
 *  判断是否为手机号码
 *  @return 返回YES  表示为手机号码  返回NO  表示不为手机号码
 */
- (BOOL)isPhoneNumber{
    NSString *phoneNumber = @"^1[3578]\\d{9}$";
    NSPredicate *regexTestMobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneNumber];
    if ([regexTestMobile evaluateWithObject:self]) {
        return YES;
    }else{
        return NO;
    }
}

/**
 *  @author yunFei, 15-12-25 17:12:06
 *  判断密码是否符合要求(6-20位密码,不带特殊符号)
 *  @return 是返回YES 否则返回NO
 */
- (BOOL)validatePassword{
    NSString *passWordRegex = @"^[a-zA-Z0-9]{6,20}+$";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",passWordRegex];
    return [passWordPredicate evaluateWithObject:self];
}

/**
 *  @author yunFei, 15-12-25 17:12:16
 *  判断是否为邮箱
 *  @return 是返回YES 否则返回NO
 */
- (BOOL)validateEmail{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:self];
}

/**
 *  @author yunFei, 15-12-25 17:12:48
 *  判断是否为身份证
 *  @return 是返回YES  否则返回NO
 */
- (BOOL)validateIdentityCard{
    BOOL flag;
    if (self.length <= 0) {
        flag = NO;
        return flag;
    }
    NSString *regex2 = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [identityCardPredicate evaluateWithObject:self];
}

/**
 *  @author yunFei, 15-12-25 17:12:43
 *  判断是否有特殊符号
 *  @return 是返回YES  否则返回NO
 */
- (BOOL)effectiveSpecialSymbols{
    NSString *regex = @"[a-zA-Z0-9]{6,20}";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:self];
}

@end
