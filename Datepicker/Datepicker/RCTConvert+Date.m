//
//  RCTConvert+Date.m
//  AwesomeProject
//
//  Created by Nada Kamel on 3/29/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RCTConvert+Date.h"

@implementation RCTConvert (Date)

+ (NSDate *)convertDate:(id)dateObj calendar:(NSCalendar *)calendar format:(NSString *) format
{
  NSDate *date;
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  formatter.dateFormat = format;
  formatter.calendar = calendar;
  if([dateObj isKindOfClass:[NSString class]]){
    date = [formatter dateFromString : dateObj];
  }else if([dateObj isKindOfClass:[NSNumber class]]){
    NSDate *tempDate= [NSDate dateWithTimeIntervalSince1970:((NSNumber *)dateObj).doubleValue/1000];
    NSString *dateString = [formatter stringFromDate:tempDate];
    date = [formatter dateFromString : dateString];
  }
  return date;
}

@end
