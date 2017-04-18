//
//  UIDatePicker+OnChange.h
//  AwesomeProject
//
//  Created by Nada Kamel on 3/30/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <React/RCTComponent.h>

@interface UIDatePicker (OnChange)

- (RCTBubblingEventBlock) onChange;
- (void) setOnChange:(RCTBubblingEventBlock)onChange;

@end
