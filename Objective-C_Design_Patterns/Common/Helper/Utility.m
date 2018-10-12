//
//  Utility.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/12.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "Utility.h"

@implementation Utility
NSString* getXUUID() {
    CFUUIDRef cfUUID = CFUUIDCreate(nil);
    CFStringRef cfUUIDString = CFUUIDCreateString(nil, cfUUID);
    NSString * result = (__bridge_transfer NSString *)CFStringCreateCopy(NULL, cfUUIDString);
    CFRelease(cfUUID);
    CFRelease(cfUUIDString);
    return [[result stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
}

BOOL validateMobileNumber(NSString *mobileNumber) {
    
    /* 中国移动: China Mobile
     * 1340~1348    GSM    SIM手机卡
     * 135    GSM    SIM手机卡
     * 136    GSM    SIM手机卡
     * 137    GSM    SIM手机卡
     * 138    GSM    SIM手机卡
     * 139    GSM    SIM手机卡
     * 147    TD-SCDMA/GSM    USIM/SIM数据卡 / 中国移动香港一咭两号储值卡内地号码
     * 150    GSM    SIM手机卡
     * 151    GSM    SIM手机卡
     * 152    GSM    SIM手机卡
     * 157    TD-SCDMA    USIM无线固话卡
     * 158    GSM    SIM手机卡
     * 159    GSM    SIM手机卡
     * 178    TD-LTE    USIM手机卡
     * 182    GSM    SIM手机卡
     * 183    GSM    SIM手机卡
     * 184    GSM    SIM手机卡
     * 187    TD-SCDMA    USIM手机卡
     * 188    TD-SCDMA    USIM手机卡
     */
    NSString *CM = @"^1(34[0-8]|(3[5-9]|47|5[0127-9]|78|8[23478]|88)\\d)\\d{7}$";
    NSPredicate *regextestCM = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    if ([regextestCM evaluateWithObject:mobileNumber]) {
        return YES;
    }
    
    /**
     * 中国联通：China Unicom
     * 130    GSM    SIM手机卡
     * 131    GSM    SIM手机卡
     * 132    GSM    SIM手机卡
     * 145    WCDMA    USIM数据卡
     * 155    GSM    SIM手机卡
     * 156    GSM/WCDMA    SIM手机卡/中港一卡兩號(3G)
     * 175    FDD-LTE/TD-LTE    USIM手机卡
     * 176    FDD-LTE/TD-LTE    USIM手机卡
     * 185    WCDMA    USIM手机卡
     * 186    WCDMA    USIM手机卡
     */
    NSString *CU = @"^1(3[0-2]|45|5[56]|7[56]|8[56])\\d{8}$";
    NSPredicate *regextestCU = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    if ([regextestCU evaluateWithObject:mobileNumber]) {
        return YES;
    }
    
    /*
     * 中国电信: China Telecom
     * 133    CDMA    UIM手机卡
     * 1349         卫星手机卡
     * 149    FDD-LTE/TD-LTE    USIM数据卡
     * 153    CDMA    UIM手机卡
     * 173    FDD-LTE/TD-LTE    USIM手机卡
     * 177    FDD-LTE/TD-LTE    USIM手机卡
     * 180    CDMA2000    UIM手机卡
     * 181    CDMA2000    UIM手机卡
     * 189    CDMA2000    UIM手机卡
     */
    NSString *CT = @"^1(349|(33|49|53|7[37]|8[01-9])\\d)\\d{7}$";
    NSPredicate *regextestCT = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    if ([regextestCT evaluateWithObject:mobileNumber]) {
        return YES;
    }
    
    
    /*
     * 虚拟运营商: Mobile virtual network operator
     中国内地40余家移动虚拟运营商推出了170、171号段。
     * 1700    中国电信    UIM手机卡
     * 1701    中国电信    UIM手机卡
     * 1702    中国电信    UIM手机卡
     * 1703    中国移动    USIM手机卡
     * 1704    中国联通    USIM手机卡
     * 1705    中国移动    USIM手机卡
     * 1706    中国移动    USIM手机卡
     * 1707    中国联通    USIM手机卡
     * 1708    中国联通    USIM手机卡
     * 1709    中国联通    USIM手机卡
     * 171    中国联通    USIM手机卡
     */
    NSString *VM = @"^1(7[01])\\d{8}$";
    NSPredicate *regextestVM = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", VM];
    if ([regextestVM evaluateWithObject:mobileNumber]) {
        return YES;
    }
    
    return NO;
}
@end
