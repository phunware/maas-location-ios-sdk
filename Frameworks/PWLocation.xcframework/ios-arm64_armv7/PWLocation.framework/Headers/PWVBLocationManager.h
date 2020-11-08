//
//  PWVBLocationManager.h
//  PWLocation
//
//  Created on 10/26/16.
//  Copyright © 2016 Phunware Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <PWLocation/PWLocationManager.h>
#import <PWLocation/PWIndoorLocation.h>

extern NSString * const kVirtualBeaconFloorIdentifierKey;
extern NSString * const kMaasFloorIdentifierKey;
extern NSString * const kFloorTopLeftKey;
extern NSString * const kFloorTopRightKey;
extern NSString * const kFloorBottomLeftKey;
extern NSString * const kFloorBottomRightKey;
extern NSString * const kFloorLatitudeKey;
extern NSString * const kFloorLongitudeKey;

@interface PWVBLocationManager : NSObject <PWLocationManager> {

@protected
    NSString *_sdkToken;
    PWIndoorLocation *_location;
}

/**
 The last indoor location received.
 */
@property (nonatomic, readonly) PWIndoorLocation *location;

/**
 The provider's SDK token.
 */
@property (nonatomic, readonly) NSString *sdkToken;

- (instancetype)init NS_UNAVAILABLE;

@end

@protocol PWVBLocationManagerProvider <NSObject>

/**
The shared PWVBLocationManager instance. Must call `createVBLocationManagerProviderWithSDKToken:floorConfigurations:onComplete` before the instance can return location.
*/
+ (PWVBLocationManager *)sharedInstance;

+ (void)createVBLocationManagerProviderWithSDKToken:(NSString *)sdkToken floorConfigurations:(NSArray *)floorConfigurations onComplete:(void(^)(PWVBLocationManager *manager, NSError *error))completion;

- (void)syncWithCurrentIndoorLocation:(PWIndoorLocation *)indoorLocation;

@end
