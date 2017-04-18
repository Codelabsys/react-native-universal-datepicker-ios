//
// CalendarManager.h
//  AwesomeProject
//
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <React/RCTViewManager.h>
#import <React/RCTConvert.h>

#ifndef CalendarManager_h
#define CalendarManager_h
#endif /* CalendarManager_h */

#import <React/RCTBridgeModule.h>
@interface RCTDatePickerIos : RCTViewManager
@property NSCalendar * calendar;
@property NSString * dateFormat;
@property id selectedDate;
@property NSCalendar* selectedCalendar;
/*@property double dateTimeStamp;
@property double minDateTimeStamp;
@property double maxDateTimeStamp;*/
@end
