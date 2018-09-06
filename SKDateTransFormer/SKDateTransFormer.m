//
//  SKDateTransFormer.m
//  https://github.com/githubze/SKDateTransFormer
//
//  Created by 徐泽 on 2018/9/6.
//  Copyright © 2018年 徐泽. All rights reserved.
//

#import "SKDateTransFormer.h"

@implementation SKDateTransFormer

#pragma mark - 通过String获取时间差格式
+ (NSString *)getTimeChaWithString:(NSString *)string
{
    NSDateFormatter *dateformatter = [[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *oldDate = [dateformatter dateFromString:string];
    
    int const secondOfDay = 86400;
    NSString* timeString;
    NSDate* currentDate = [NSDate date];
    
    int timeInterval =  (int)[currentDate timeIntervalSinceDate:oldDate];
    
    if (timeInterval >= secondOfDay) {
        NSString* dateString = [oldDate descriptionWithLocale:nil];
        if (timeInterval < (secondOfDay * 2)) {
            timeString = [NSString stringWithFormat:@"昨天 %@",[dateString substringWithRange:NSMakeRange(11, 5)]];
        }else{
            timeString = [dateString substringWithRange:NSMakeRange(5, 5)];
        }
    }else{
        int hour = timeInterval / 3600;
        int min = (timeInterval % 3600) / 60;
        if (hour > 0) {
            timeString = [NSString stringWithFormat:@"%d小时前",hour];
        }else if(min > 0) {
            timeString = [NSString stringWithFormat:@"%d分钟前",min];
        }else{
            timeString = @"刚刚";
        }
    }
    
    return timeString;
}

#pragma mark - string转化为string2
+ (NSString *)getString2WithString:(NSString *)string{
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
    [inputFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate* inputDate = [inputFormatter dateFromString:string];
    
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setLocale:[NSLocale currentLocale]];
    [outputFormatter setDateFormat:@"MM-dd  HH:mm"];
    return [outputFormatter stringFromDate:inputDate];
}
+ (NSString *)getString3WithString:(NSString *)string{
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
    [inputFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate* inputDate = [inputFormatter dateFromString:string];
    
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setLocale:[NSLocale currentLocale]];
    [outputFormatter setDateFormat:@"yyyy-MM-dd"];
    return [outputFormatter stringFromDate:inputDate];
}

#pragma mark - string转化为date
+ (NSDate *)getDateWithString:(NSString *)string{
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
    [inputFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [inputFormatter dateFromString:string];
}
+ (NSDate *)getDateWithString2:(NSString *)string{
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
    [inputFormatter setDateFormat:@"yyyy-MM-dd"];
    
    return [inputFormatter dateFromString:string];
}
+ (NSDate *)getDateWithString3:(NSString *)string{
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
    [inputFormatter setDateFormat:@"HH:mm"];
    
    return [inputFormatter dateFromString:string];
}

#pragma mark - 通过Date获取时间差格式
+ (NSString *)getTimeChaWithDate:(NSDate *)oldDate
{
    int const secondOfDay = 86400;
    NSString* timeString;
    NSDate* currentDate = [NSDate date];
    
    int timeInterval =  (int)[currentDate timeIntervalSinceDate:oldDate];
    if (timeInterval >= secondOfDay) {
        NSString* dateString = [oldDate descriptionWithLocale:nil];
        if (timeInterval < (secondOfDay * 2)) {
            timeString = [NSString stringWithFormat:@"昨天 %@",[dateString substringWithRange:NSMakeRange(11, 5)]];
        }else{
            timeString = [dateString substringWithRange:NSMakeRange(5, 5)];
        }
    }else{
        int hour = timeInterval / 3600;
        int min = (timeInterval % 3600) / 60;
        if (hour > 0) {
            timeString = [NSString stringWithFormat:@"%d小时前",hour];
        }else if(min > 0) {
            timeString = [NSString stringWithFormat:@"%d分钟前",min];
        }else{
            timeString = @"刚刚";
        }
    }
    
    return timeString;
}

#pragma mark - Date转化为string2
+ (NSString *)getString2WithDate:(NSDate *)date{
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setLocale:[NSLocale currentLocale]];
    [outputFormatter setDateFormat:@"MM-dd  HH:mm"];
    return [outputFormatter stringFromDate:date];
}

#pragma mark - Date转化为string
+ (NSString *)getStringWithDate:(NSDate *)date{
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setLocale:[NSLocale currentLocale]];
    [outputFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [outputFormatter stringFromDate:date];
}

#pragma mark - 时间戳转化string
+ (NSString *)getStringWithTime:(NSString *)timeString{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[timeString doubleValue]];
    
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [formatter stringFromDate:date];
}

#pragma mark - 时间戳转化date
+ (NSDate *)getDateWithTime:(NSString *)timeString{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[timeString doubleValue]];
    return date;
}

#pragma mark - 获取当前时间
+ (NSString *)getCurrentDateTime{
    NSDate *date = [NSDate date];
    
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
    [inputFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString * currentDate = [inputFormatter stringFromDate:date];
    
    return currentDate;
}
+ (NSString *)getCurrentDateTime1{
    NSDate *date = [NSDate date];
    
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
    [inputFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString * currentDate = [inputFormatter stringFromDate:date];
    
    return currentDate;
}
+ (NSString *)getCurrentDateTime2{
    NSDate *date = [NSDate date];
    
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
    [inputFormatter setDateFormat:@"HH:mm"];
    NSString * currentDate = [inputFormatter stringFromDate:date];
    
    return currentDate;
}
+ (NSString *)getCurrentDateTime3{
    NSDate *date = [NSDate date];
    
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
    [inputFormatter setDateFormat:@"yyyy-MM"];
    NSString * currentDate = [inputFormatter stringFromDate:date];
    
    return currentDate;
}

+ (NSString *)getString4WithString:(NSString *)string{
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc] init];
    [inputFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"en_US"]];
    [inputFormatter setDateFormat:@"yyyy-MM-dd"];
    NSDate* inputDate = [inputFormatter dateFromString:string];
    
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setLocale:[NSLocale currentLocale]];
    [outputFormatter setDateFormat:@"dd"];
    return [outputFormatter stringFromDate:inputDate];
}

+ (NSString *)getDayWithString:(NSString *)dateStr isYesterDay:(BOOL)isYester{
    NSString *dateString = dateStr;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *date = [formatter dateFromString:dateString];
    
    NSDate *yesterday = [NSDate dateWithTimeInterval:-60 * 60 * 24 sinceDate:date];
    
    NSDate *tomorrow = [NSDate dateWithTimeInterval:60 * 60 * 24 sinceDate:date];
    
    if (isYester) {
        return [formatter stringFromDate:yesterday];
    }
    return [formatter stringFromDate:tomorrow];
}

+ (NSString *)getMonthWithString:(NSString *)dateStr isYesterMonth:(BOOL)isYester{
    NSString *dateString = dateStr;
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateFormat:@"yyyy-MM"];
    
    NSDate *date = [formatter dateFromString:dateString];
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *lastMonthComps = [[NSDateComponents alloc] init];
    //    [lastMonthComps setYear:1]; // year = 1表示1年后的时间 year = -1为1年前的日期，month day 类推
    [lastMonthComps setMonth:-1];
    NSDate *newdate = [calendar dateByAddingComponents:lastMonthComps toDate:date options:0];
    
    NSDateComponents *toMonthComps = [[NSDateComponents alloc] init];
    //    [lastMonthComps setYear:1]; // year = 1表示1年后的时间 year = -1为1年前的日期，month day 类推
    [toMonthComps setMonth:1];
    NSDate *newdate2 = [calendar dateByAddingComponents:toMonthComps toDate:date options:0];
    
    if (isYester) {
        return [formatter stringFromDate:newdate];
    }
    return [formatter stringFromDate:newdate2];
}

@end
