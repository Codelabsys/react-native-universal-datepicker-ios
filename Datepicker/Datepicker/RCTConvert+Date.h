//
//  RCTConvert+Date.h
//  AwesomeProject
//
//  Created by Nada Kamel on 3/29/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <React/RCTConvert.h>

@interface RCTConvert (Date)

+ (NSDate *)convertDate:(id)Date calendar:(NSCalendar *)calendar format:(NSString *) format;

@end
