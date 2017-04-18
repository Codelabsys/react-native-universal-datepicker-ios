//
//  RCTConvert+DatePickerMode.m
//  AwesomeProject
//
//  Created by Nada Kamel on 3/29/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RCTConvert+DatePickerMode.h"

@implementation RCTConvert (DatePickerMode)

RCT_ENUM_CONVERTER(UIDatePickerMode, (@{
                                        @"time": @(UIDatePickerModeTime),
                                        @"date": @(UIDatePickerModeDate),
                                        @"datetime": @(UIDatePickerModeDateAndTime),
                                        }), UIDatePickerModeTime, integerValue)

@end
