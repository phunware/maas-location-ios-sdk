//
//  PWMSELocationManager.h
//  PWMapKit
//
//  Copyright (c) 2014 Phunware. All rights reserved.
//

#import <PWLocation/PWIndoorLocation.h>
#import <PWLocation/PWLocationManager.h>

@protocol PWMSELocationManagerDelegate;

/**
 The `PWMSELocationManager` class defines the interface for configuring the delivery of Cisco Mobility Services Engine (MSE) location-related events to your application. You use an instance of this class to establish the parameters that determine when location events should be delivered and to start and stop the actual delivery of those events. This class conforms to the `PWLocationManager` protocol.
 */

@interface PWMSELocationManager : NSObject <PWLocationManager>

/**
 The venue GUID associated with the location manager. (read-only)
 */
@property (nonatomic, readonly) NSString *venueGUID;

/**
 The venue location associated with the location manager. (read-only)
 */
@property (nonatomic, readonly) CLLocationCoordinate2D venueLocation;

@property (nonatomic, readonly) PWIndoorLocation *location;

/**
 Initializes the location manager with the specified venue GUID and the venue location.
 @param venueGUID - The venue GUID is the specific venue identifier for a given indoor location.
 @param venueLocation - The location of the venue.
 @discussion The venue GUID will come from Phunware and is available in the `PWBuilding` object. If the device is not within 5 kilometers of the venue location, then location updates will fail.
 @return The location manager object.
 */

- (instancetype)initWithVenueGUID:(NSString *)venueGUID location:(CLLocationCoordinate2D)venueLocation;

- (BOOL)locationServicesAvailable;
- (void)startUpdatingLocation;
- (void)stopUpdatingLocation;

@end

/**
 The `PWMSELocationManagerDelegate` protocol defines the methods used to receive location updates from a `PWMSELocationManager` object. This class conforms to the `PWLocationManagerDelegate` protocol.
 
 The methods of your delegate object are called from the main application thread.
 */

@protocol PWMSELocationManagerDelegate <PWLocationManagerDelegate>

- (void)locationManager:(PWMSELocationManager *)manager didUpdateToLocation:(PWIndoorLocation *)location;
- (void)locationManager:(PWMSELocationManager *)manager failedWithError:(NSError *)error;

@end 
