# PWLocation CHANGELOG

## v1.2.0 (Wednesday, September 30th, 2015)

* Integrated with new PWCore v2.0.0 SDK

* Updated `PWSLIndoorLocationManager` dependencies

## v1.1.0 (Monday, August 31st, 2015)
* Updated `PWSLLocationManager` internals to provide more accurate and battery efficent location updates.
	- **IMPORTANT**: This update changes the map identifier value used to initialize `PWSLLocationManager`. Please contact Phunware for your new map identifier values. These new values apply only to PWLocation v1.1.0 and beyond.

* Added a new location manager, `PWFusedLocationManager` that allows you to fused multiple location manager updates based on polygons and floor identifiers. Please read more about this provider and how to use it here: https://developer.phunware.com/pages/viewpage.action?pageId=3409049

* Added `updateInterval` to `PWMSELocationManager` that allows you to modify the update frequency of the MSE location provider. The default update frequency is 2 seconds.

* Added `defaultHorizontalAccuracy` parameter to `PWMSELocationManager` that allows you to specify the accuracy of the MSE location updates returned. If a valid horizontal accuracy is returned as part of the location update this property will be ignored.


## v1.0.2 (Thursday, June 4th, 2015)
* Fixed an issue where `PWGPSLocationManager` would erroneously call failure callback when location authorization change callback was valid.


## v1.0.1 (Monday, February 23rd, 2015)
* Fixed issue where `PWGPSLocationManager` could cause a crash on iOS 7 devices when trying to access non-existent `floor` property


## v1.0.0 (Thursday, January 29th, 2015)
* Initial 1.0.0 GA release
* Added `PWGPSLocationManager` which is a convenient wrapper around `CLLocationManager`

## v0.9.3 (Wednesday, November 12th, 2014)
 * Deprecating location parameter in `PWSLLocationManager` and `PWMSELocationManager` initializers
 * Improved BLE background support in `PWSLLocationManager`


## v0.9.2 (Thursday, October 30th, 2014)
 * Fixed issue where `PWMSELocationManager` was using x/y values instead of latitude/longitude values when returning a location


## v0.9.1 (Thursday, October 9th, 2014)
 * Several bug fixes related to MSE related location updates and registration
 * Removed distance check for MSELocationManager


## v0.9.0 (BETA) (Wednesday, September 17th, 2014)
 * Several bug fixes related to BLE location updates
 * Several bug fixes related to MSE related location updates
 * Improved documentation


## v0.8.0 (Tuesday, September 2nd, 2014)
 * Added mock location manager for location testing
 * Fixed several issues with the SLLocationManager callback events not firing


## v0.5.0 (Friday, June 18th, 2014)
 * Initial release (BETA)