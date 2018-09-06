# Info
各种时间格式的相互转换工具类，时间戳／Date／几分钟前／完整时间／简约时间，简单易用。

# Use CocoaPods
 pod 'SKDateTransFormer', '~> 1.0.0'
 
# Use with this code
 
-#import "SKDateTransFormer.h"

//通过String获取时间差格式
+ (NSString *)getTimeChaWithString:(NSString *)string;

//string转化为string2
+ (NSString *)getString2WithString:(NSString *)string;

//string转化为string3
+ (NSString *)getString3WithString:(NSString *)string;

//string转化为string4
+ (NSString *)getString4WithString:(NSString *)string;

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

//获取前一天/后一天
+ (NSString *)getDayWithString:(NSString *)dateStr isYesterDay:(BOOL)isYester;

//获取上个月/下个月
+ (NSString *)getMonthWithString:(NSString *)dateStr isYesterMonth:(BOOL)isYester;
