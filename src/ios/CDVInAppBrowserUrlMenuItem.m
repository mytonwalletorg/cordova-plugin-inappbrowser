//
//  CDVInAppBrowserUrlMenuItem.m
//  Pods
//
//  Created by Sina on 1/6/26.
//

#import "CDVInAppBrowserUrlMenuItem.h"

@implementation CDVInAppBrowserUrlMenuItem

- (id)init
{
    if (self = [super init]) {
      self.key = nil;
      self.value = nil;
    }

    return self;
}

+ (NSArray<CDVInAppBrowserUrlMenuItem *> *)parseMenu:(NSArray *)array
{
    if (array == nil)
      return nil;

    NSMutableArray<CDVInAppBrowserUrlMenuItem *> *items = [NSMutableArray array];

    for (id obj in array) {
        if (![obj isKindOfClass:[NSDictionary class]]) {
            continue;
        }

    NSDictionary *dict = (NSDictionary *)obj;

    NSString *key = dict[@"key"];
    NSString *value = dict[@"value"];

    CDVInAppBrowserUrlMenuItem *item = [[CDVInAppBrowserUrlMenuItem alloc] init];
    item.key = key ?: @"";
    item.value = value ?: @"";

    [items addObject:item];
  }

  return [items copy];
}

@end
