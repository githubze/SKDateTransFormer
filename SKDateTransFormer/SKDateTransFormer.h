//
//  SKDateTransFormer.m
//  https://github.com/githubze/SKDateTransFormer
//
//  Created by 徐泽 on 2018/9/6.
//  Copyright © 2018年 徐泽. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SKDateTransFormer : NSObject

//通过String获取时间差格式
+ (NSString *)getTimeChaWithString:(NSString *)string;

//string转化为string2
+ (NSString *)getString2WithString:(NSString *)string;

//string转化为string3
+ (NSString *)getString3WithString:(NSString *)string;

//string转化为date
+ (NSDate *)getDateWithString:(NSString *)string;
+ (NSDate *)getDateWithString2:(NSString *)string;
+ (NSDate *)getDateWithString3:(NSString *)string;

//通过Date获取时间差格式
+ (NSString *)getTimeChaWithDate:(NSDate *)oldDate;

//Date转化为string2
+ (NSString *)getString2WithDate:(NSDate *)date;

//Date转化为string
+ (NSString *)getStringWithDate:(NSDate *)date;

//时间戳转化string
+ (NSString *)getStringWithTime:(NSString *)timeString;

//时间戳转化Date
+ (NSDate *)getDateWithTime:(NSString *)timeString;

//获取当前时间
+ (NSString *)getCurrentDateTime;
+ (NSString *)getCurrentDateTime1;
+ (NSString *)getCurrentDateTime2;
+ (NSString *)getCurrentDateTime3;

+ (NSString *)getString4WithString:(NSString *)string;

//获取前一天/后一天
+ (NSString *)getDayWithString:(NSString *)dateStr isYesterDay:(BOOL)isYester;

//获取上个月/下个月
+ (NSString *)getMonthWithString:(NSString *)dateStr isYesterMonth:(BOOL)isYester;

@end
