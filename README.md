PWLocation SDK for iOS
================

Version 1.0.2

This is Phunware's iOS SDK for the Location module. Visit http://maas.phunware.com/ for more details and to sign up.


Requirements
------------

- MaaS Core v1.3.0 or greater
- iOS 7.1 or greater
- Xcode 6 or greater



Getting Started
---------------

- [Download PWLocation](https://github.com/phunware/maas-location-ios-sdk/archive/master.zip) and run the included sample app.
- Continue reading below for installation and integration instructions.
- Be sure to read the [documentation](http://phunware.github.io/maas-location-ios-sdk/) for additional details.



Installation
------------

The easiest way to use PWLocation is via CocoaPods. Simply add `pod PWLocation` to your `Podfile`. 
#### Alternate Installation Steps

The following Phunware frameworks are required:
````
MaaSCore.framework
````

PWLocation has a dependency on MaaSCore.framework, which is available here: https://github.com/phunware/maas-core-ios-sdk

It's recommended that you add the MaaS frameworks to the 'Vendor/Phunware' directory. This directory should contain MaaSCore.framework and PWLocation.framework, as well as any other MaaS frameworks that you are using.

The following frameworks are required:
````
CoreMotion.framework
CoreBluetooth.framework
libz.dylib
libxml2.2.dylib
libsqlite3.dylib
````


Documentation
------------

Documentation is included in the Documents folder in the repository as both HTML and as a .docset. You can also find the latest documentation here: http://phunware.github.io/maas-location-ios-sdk/



Integration
-----------

`PWLocation` is meant to be used in conjunction with PWMapKit but can be used as a standalone SDK.

## PWMSELocationManager

The `PWMSELocationManager` class defines the interface for configuring the delivery of Cisco Mobility Services Engine (MSE) location-related events to your application. Use an instance of this class to establish the parameters that determine when location events should be delivered and to start and stop the actual delivery of those events. This class conforms to the `PWLocationManager` protocol.

````objective-c
// Initialization:
CLLocationCoordinate2d location = CLLocationCoordinate2DMake(30.360016, -97.742507);

PWMSELocationManager *locationManager = [[PWMSELocationManager alloc] initWithVenueGUID:@"YOUR_VENUE_GUID" location:location];
locationManager.delegate = self;

// Start fetching location updates:
[locationManager startUpdatingLocation];
````

## PWSLLocationManager

The `PWSLLocationManager` class defines the interface for configuring the delivery of BLE location-related events to your application. Use an instance of this class to establish the parameters that determine when location events should be delivered and to start and stop the actual delivery of those events. This class conforms to the `PWLocationManager` protocol.

````objective-c
// Initialization:
CLLocationCoordinate2d location = CLLocationCoordinate2DMake(30.360016, -97.742507);

PWSLLocationManager *locationManager = [[PWSLLocationManager alloc] initWithMapIdentifier:@"YOUR_MAP_ID" customerIdentifier:@"YOUR_CUSTOMER_ID" location];
locationManager.delegate = self;

// Start fetching location updates:
[locationManager startUpdatingLocation];
````

## PWMockLocationManager

The `PWMockLocationManager` class allows you to implement a mock provider for testing and validation. This is extremely useful for location testing when you are not able to be on-site at a venue with a proper location provider. The mock location manager is initialized with a configuration object that is populated with JSON data.

It's important to note that the `floorIDMapping` property does not need to be specified for the `PWMockLocationManager`. The location floor IDs in the JSON should be equivalent to the building floor IDs.

````objective-c
// Initialize the configuration:	
NSURL *configurationURL = [NSURL URLWithString:@"YOUR_FILE_URL"];
NSData *data = [NSData dataWithContentsOfURL:configurationURL];
NSDictionary *configurationData = [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
PWMockLocationManagerConfiguration *configuration = [PWMockLocationManagerConfiguration unpack:configurationData];

// Initializing the location manager:
PWMockLocationManager *locationManager = [[PWMockLocationManager alloc] initWithMockLocationManagerWithConfiguration:configuration];
locationManager.delegate = self;

// Start fetching location updates:
[locationManager startUpdatingLocation];
````

## Location Updates

Location updates are returned via the delegate. Update events are very similar to `CLLocationManagerDelegate` events.

````objective-c
- (void)locationManager:(id<PWLocationManager>)manager didUpdateToLocation:(id<PWLocation>)location
{
    // Handle update.
}

- (void)locationManager:(id<PWLocationManager>)manager failedWithError:(NSError *)error
{
    // Handle failure.
}
````
