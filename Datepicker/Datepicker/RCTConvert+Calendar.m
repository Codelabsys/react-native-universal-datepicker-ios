//
//  RCTConvert+Calendar.m
//  AwesomeProject
//
//  Created by Nada Kamel on 3/29/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RCTConvert+Calendar.h"

@implementation RCTConvert (Calendar)

+ (NSCalendar*) calendarFromString:(NSString *) calendarString
{
  
  NSDictionary * calendarDict = @{@"Gregorian": NSCalendarIdentifierGregorian,
                                  @"IslamicUmmAlQura" : NSCalendarIdentifierIslamicUmmAlQura,
                                  @"Islamic": NSCalendarIdentifierIslamic,
                                  @"chinese":NSCalendarIdentifierChinese,
                                  @"coptic":NSCalendarIdentifierCoptic,
                                  @"ISO8601":NSCalendarIdentifierISO8601,
                                  @"indian":NSCalendarIdentifierIndian,
                                  @"islamicCivil":NSCalendarIdentifierIslamicCivil,
                                  @"japanese":NSCalendarIdentifierJapanese,
                                  @"persian":NSCalendarIdentifierPersian,
                                  @"republicOfChina":NSCalendarIdentifierRepublicOfChina,
                                  @"islamicTabular":NSCalendarIdentifierIslamicTabular};
  return [NSCalendar calendarWithIdentifier:calendarDict[calendarString]];
}

@end
