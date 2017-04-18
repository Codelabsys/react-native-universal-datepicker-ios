//
//  UIDatePicker+OnChange.m
//  AwesomeProject
//
//  Created by Nada Kamel on 3/30/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "UIDatePicker+OnChange.h"
#import <objc/runtime.h>

@implementation UIDatePicker (OnChange)

static void * OnChangeKey;
- (RCTBubblingEventBlock) onChange
{
  return objc_getAssociatedObject(self, &OnChangeKey);
}

- (void) setOnChange:(RCTBubblingEventBlock)onChange
{
  objc_setAssociatedObject(self, &OnChangeKey, onChange, OBJC_ASSOCIATION_COPY);
}

@end
