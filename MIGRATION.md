# PWLocation Migration Guide
## Upgrade from 3.10.x to 3.11.x

#### General

The iOS deployment target of PWLocation is now 13.0 instead of 10.0. To be compatible with PWLocation, an application must have a minimum iOS deployment target of 13.0 as well.

#### Upgrade Steps

1. Update your applicable Xcode project settings to a minimum iOS deployment target of 13.0 or greater.

2. Open the `Podfile` from your project and change PWLocation to include `pod 'PWLocation', '3.11.x'`, update your iOS platform to 13.0 or greater, then run `pod update` in the Terminal to update the framework.

## Upgrade from 3.9.x to 3.10.x

#### General

This release adds campus routing features.


#### Change Detail

#### PWManagedLocationManager

*ADDED*

- (instancetype)initWithCampusId:(NSInteger)campusId;

#### Upgrade Steps

1. Open the `Podfile` from your project and change PWLocation to include `pod 'PWLocation', '3.10.x'`, then run `pod update` in the Terminal to update the framework.

## Upgrade from 3.8.x to 3.9.x

#### General

This release separates Mist and Beacon Point location providers into separate frameworks (CocoaPod subspecs). This separation provides flexibility to omit supported 3rd party location provider dependencies that would otherwise force constraints onto the Phunware Location SDK consumer (e.g. lack of bitcode compliance, simulator support). Finally, the distribution packaging format has been updated to use the new XCFramework binary format.

#### Upgrade Steps

1. Open the `Podfile` from your project and change PWLocation to include `pod 'PWLocation', '3.9.x'`, then run `pod update` in the Terminal to update the framework.

#### Using Subspecs

1. Open the `Podfile` from your project and add a new pod dependency for each supported location provider subspec by using the following format:  `pod 'PWLocation/<provider>', '3.9.x'`. Finally, run `pod install` in the Terminal to install the location provider subspec framework(s).

## Upgrade from 3.7.x to 3.8.x

#### General

This release adds the ability to blend GPS with indoor location providers when configured as such in the MaaS portal, as well as provide an alternate compass experience for PWMapKit (see PWMapKit documentation for how to use it).

#### Upgrade Steps

1. Open the `Podfile` from your project and change PWLocation to include `pod 'PWLocation', '3.8.x'`, then run `pod update` in the Terminal to update the framework.

## Upgrade from 3.6.x to 3.7.x

#### General

This release actively updates the status of beacons heard by the device running the SDK.

#### Upgrade Steps

1. Open the `Podfile` from your project and change PWLocation to include `pod 'PWLocation', '3.7.x'`, then run `pod update` in the Terminal to update the framework.

## Upgrade from 3.5.x to 3.6.x

#### General

This release includes PWCore 3.8.0 which contains new automatic screen view analytic events and simplified analytic event creation.

#### Upgrade Steps

1. Open the `Podfile` from your project and change PWLocation to include `pod 'PWLocation', '3.6.x'`, then run `pod update` in the Terminal to update the framework.

2. Check out the [migration guide](https://github.com/phunware/maas-core-ios-sdk/blob/master/MIGRATION.md) for PWCore 3.8.0 on updating to the new analytics API.

## Upgrade from 3.4.x to 3.5.x

#### General

The iOS deployment target of PWLocation is now 10.0 instead of 9.0. To be compatible with PWLocation, an application must have a minimum iOS deployment target of 10.0 as well.

#### Upgrade Steps

1. Update your applicable Xcode project settings to a minimum iOS deployment target of 10.0 or greater.

2. Open the `Podfile` from your project and change PWLocation to include `pod 'PWLocation', '3.5.x'`, update your iOS platform to 10.0 or greater, then run `pod update` in the Terminal to update the framework.

## Upgrade from 3.3.x to 3.4.x

#### General

To align with best practices, PWLocation no longer prompts for location permission, leaving control to the app developer. For PWLocation to function, location permission must be granted.

#### Upgrade Steps

1. Open the `Podfile` from your project and change PWLocation to include `pod 'PWLocation', '3.4.x'`, then run `pod update` in the Terminal to update the framework. This will include the latest version of PWCore 3.6.x.

2. Please follow [Apple's Best Practices](https://developer.apple.com/documentation/corelocation/choosing_the_authorization_level_for_location_services) for requesting location permissions.

3. According to the above best practices, react to different levels of authorization the user might pick: Always, When In Use, or None. A PWLocationManager should not be used if no location permission was given; this can lead to unexpected and unsupported behavior.

## Upgrade from 3.1.x to 3.3.x

#### General

This release includes support for our new BLE provider, Locate.

#### Upgrade Steps

1. Open the `Podfile` from your project and change PWLocation to include `pod 'PWLocation', '~> 3.3.x'`, then run `pod update` in the Terminal to update the framework. This is only necessary if using PWLocation by itself. Otherwise the correct version will be installed with PWMapKit if using it bundled.
