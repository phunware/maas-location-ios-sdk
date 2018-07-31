# PWLocation Migration Guide
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
