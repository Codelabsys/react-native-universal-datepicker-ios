//
//  RCTConvert+DatePickerStyle.m
//  react-native-universal-datepicker-ios
//
//  Created by Samar Ali on 3/25/2021.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import "RCTConvert+DatePickerStyle.h"

@implementation RCTConvert (DatePickerStyle)

RCT_ENUM_CONVERTER(UIDatePickerStyle, (@{
    @"default": @(UIDatePickerStyleAutomatic),
    @"compact": @(UIDatePickerStyleCompact),
    @"spinner": @(UIDatePickerStyleWheels),
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 140000
    @"inline": @(UIDatePickerStyleInline),
#endif
}), UIDatePickerStyleAutomatic, integerValue)

@end
