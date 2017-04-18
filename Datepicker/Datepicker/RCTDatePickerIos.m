#import "RCTDatePickerIos.h"
#import <React/RCTLog.h>
#import "RCTConvert+Date.h"
#import "RCTConvert+Calendar.h"
#import "RCTConvert+DatePickerMode.h"
#import "UIDatePicker+OnChange.h"


/////////////////////////////////////////////////////////////////////////////////

@implementation RCTDatePickerIos

- (instancetype)init
{
  if (self = [super init]) {
    _dateFormat = @"yyyy-MM-dd";
  }
  return self;
}

- (void)didChange:(UIDatePicker *)datePicker
{
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  formatter.dateFormat = self.dateFormat;
  formatter.calendar = datePicker.calendar;
  if (datePicker.onChange) {
    datePicker.onChange(@{@"date":[formatter stringFromDate: datePicker.date], @"timestamp":@(datePicker.date.timeIntervalSince1970 *1000.0)});
  }
}

RCT_EXPORT_MODULE();

- (UIView *)view
{
   UIDatePicker *datePicker = [[UIDatePicker alloc] init];
   [datePicker addTarget:self action:@selector(didChange:) forControlEvents:UIControlEventValueChanged];
   return datePicker;
}


RCT_CUSTOM_VIEW_PROPERTY(date, NSData, RCTDatePickerIos)
{
  self.selectedDate = json;
}

RCT_CUSTOM_VIEW_PROPERTY(maximumDate, NSData, RCTDatePickerIos)
{
  UIDatePicker * datePickerInst = ((UIDatePicker *)view);
  datePickerInst.maximumDate = [RCTConvert convertDate: json calendar:datePickerInst.calendar format:self.dateFormat];
}


RCT_CUSTOM_VIEW_PROPERTY(minimumDate, NSData, RCTDatePickerIos)
{
  UIDatePicker * datePickerInst = ((UIDatePicker *)view);
  datePickerInst.minimumDate = [RCTConvert convertDate: json calendar:datePickerInst.calendar format:self.dateFormat];
}

RCT_CUSTOM_VIEW_PROPERTY(calendar, NSData, RCTDatePickerIos)
{
  UIDatePicker * datePickerInst = ((UIDatePicker *)view);
  datePickerInst.calendar = [RCTConvert calendarFromString:json];
  self.selectedCalendar = datePickerInst.calendar;
  [datePickerInst setDate: [RCTConvert convertDate: self.selectedDate calendar:datePickerInst.calendar format:self.dateFormat]];
}


RCT_CUSTOM_VIEW_PROPERTY(dateFormat, NSString, RCTDatePickerIos)
{
  self.dateFormat = json;
}

RCT_REMAP_VIEW_PROPERTY(mode, datePickerMode, UIDatePickerMode)
RCT_EXPORT_VIEW_PROPERTY(onChange, RCTBubblingEventBlock)

@end


