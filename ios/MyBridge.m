//
//  MyBridge.m
//  RNBridge
//
//  Created by Jayadi Kurniawan on 29/03/23.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(SimpleBridge, NSObject)
RCT_EXTERN_METHOD(DisplayText:(NSString *)text duration:(double *)duration)
@end
