//
//  MaaSLocationDefines.h
//  MaaSLocation
//
//  Created by Carl Zornes on 6/27/14.
//  Copyright (c) 2014 Phunware. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <PWLocation/PWLocation.h>
#import <PWCore/PWCore.h>

#define envString(env) [@{@(2):@"-dev",@(1):@"-stage",@(0):@""} objectForKey:@(env)]
#define s3EnvString(env) [@{@(2):@"-dev",@(1):@"-stage",@(0):@"-prod"} objectForKey:@(env)]

#define PWLocationLogError(message, ...)   PWLogError([PWLocation serviceName],message, __VA_ARGS__)
#define PWLocationLogWarning(message, ...)   PWLogWarning([PWLocation serviceName],message, __VA_ARGS__)
#define PWLocationLogInfo(message, ...)   PWLogInfo([PWLocation serviceName],message, __VA_ARGS__)
#define PWLocationLogDebug(message, ...)   PWLogDebug([PWLocation serviceName],message, __VA_ARGS__)

#pragma mark - API

// Error
extern NSString *const kPWLocationMaaSCoreVersionMinimum;
extern NSString *const kPWLocationErrorDomain;
extern NSString *const kPWLocationException;

// Error text
extern NSString *const kPWLocationErrorUnconfirmLocation;
extern NSString *const kPWLocationErrorRequestTimeout;
extern NSString *const kPWLocationErrorUnauthorized;
extern NSString *const kPWLocationErrorServiceUnavailable;
extern NSString *const kPWLocationErrorBadRequest;
extern NSString *const kPWLocationErrorLocationServicesUnavailable;

extern NSString *const kPWLocationErrorSystemNotDetermined;
extern NSString *const kPWLocationErrorSystemRestricted;
extern NSString *const kPWLocationErrorSystemDenied;

// Provider Errors
extern NSString *const kPWLocationProviderErrorNoResponse;
extern NSString *const kPWLocationProviderErrorResponseParse;
extern NSString *const kPWLocationProviderErrorNoBeacons;
extern NSString *const kPWLocationProviderErrorCloudConnection;
extern NSString *const kPWLocationProviderErrorDataConnection;

extern NSString *const kPWLocationErrorMockFileInvalid;
extern NSString *const kPWLocationErrorMockDataInvalid;
extern NSString *const kPWLocationErrorMockDataUpdateInterval;
extern NSString *const kPWLocationErrorMockDataLocations;
extern NSString *const kPWLocationErrorMockDataLatLong;

// For mock location provider
extern NSString *const kPWLocationKeyLocations;
extern NSString *const kPWLocationKeyRepeats;
extern NSString *const kPWLocationKeyLatitude;
extern NSString *const kPWLocationKeyLongitude;
extern NSString *const kPWLocationKeyFloorID;
extern NSString *const kPWLocationKeyHorizontalAccuracy;
extern NSString *const kPWLocationKeyUpdateInterval;

// MARS
extern NSString *const kPWMARSAPIClientBaseURLString;
extern NSString *const kPWMARSAPIHashedMACAddressKey;
extern NSString *const kPWMARSCurrentVenueKey;

// Location
extern NSString *const kPWLocationAPIBaseURLString;

// Fused
extern NSTimeInterval const PWMinimumContiguousUpdateLength;
extern NSTimeInterval const PWLocationMaximumAge;
extern NSInteger const PWMaximumNumberOfLocations;

// Debug
extern NSString *const PWLocationDebugNotification;
extern NSString *const PWProviderFloorId;
extern NSString *const PWMistLatencyValue;
extern NSString *const PWFloorSwitchPrevention;
