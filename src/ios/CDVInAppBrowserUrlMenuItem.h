//
//  CDVInAppBrowserUrlMenuItem.h
//  Pods
//
//  Created by Sina on 1/6/26.
//

#import <Foundation/Foundation.h>

@interface CDVInAppBrowserUrlMenuItem : NSObject {}

@property (nonatomic, copy) NSString* key;
@property (nonatomic, copy) NSString* value;

+ (NSArray<CDVInAppBrowserUrlMenuItem *> *)parseMenu:(NSArray *)array;

@end
