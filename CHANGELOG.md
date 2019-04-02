# PWLocation CHANGELOG
## 3.8.0 (Tuesday, April 2nd, 2019)
#### Features
* Ability to blend GPS with indoor location providers
* Add Managed Compass for use with PWMapKit to improve heading experience

## 3.7.1 (Tuesday, February 26th, 2019)
#### Bug fixes / performance enhancements
* Use new v3 Map-API

## 3.7.0 (Thursday, January 10th, 2019)
#### Features
* Update the status of the beacons heard by the device

#### Bug fixes / performance enhancements
* Update to MistSDK 1.4.2

## 3.6.1 (Thursday, November 29th, 2018)
#### Bug fixes / performance enhancements
* Update to MistSDK 1.3.0

## 3.6.0 (Wednesday, November 14th, 2018)
#### Features
* Update for PWCore 3.8.0 compatibility using new automatic screen view analytic events and simplified custom event creation.

## 3.5.2 (Thursday, October 4th, 2018)
#### Bug fixes / performance enhancements
* Updates made to Locate Algorithm
* Improved Locate load time

## 3.5.1 (Wednesday, August 15th, 2018)
#### Bug fixes / performance enhancements
* Update for PWCore 3.7.0 compatibility

## 3.5.0 (Tuesday, July 31st, 2018)
#### Bug fixes / performance enhancements
* Updates made to Locate Algorithm
* iOS deployment target increased from 9.0 to 10.0

## 3.4.2 (Wednesday, June 27th, 2018)
#### Bug fixes / performance enhancements
* Updates made to Locate Algorithm

## 3.4.1 (Thursday, May 31st, 2018)
#### Bug fixes / performance enhancements
* Fix CMX crash
* Updates made to Locate Algorithm

## 3.4.0 (Monday, May 7th, 2018)
#### Features
* Remove location permission prompting
* Update to PWCore 3.5.x

## 3.3.4 (Monday, Apr 16th, 2018)
#### Features
* Exposed userInfo object from bundle download on PWManagedLocationManager

#### Bug fixes / performance enhancements
* Updates made to Locate algorithm

## 3.3.2 (Tuesday, Mar 20th, 2018)
#### Bug fixes / performance enhancements
* Updates made to Locate algorithm

## 3.3.1 (Thursday, Mar 15th, 2018)
#### Bug fixes / performance enhancements
* Updates made to Locate algorithm
* Fixed crash when Locate has an invalid beacon UUID
* Cleaned up some logging

## 3.3.0 (Thursday, Feb 22nd, 2018)
#### Features
* New BLE provider (Phunware Locate)
* Update to PWCore 3.3.x

#### Bug fixes / performance enhancements
* Added additional error logging for troubleshooting

## 3.1.11 (Wednesday, Jan 10th, 2018)
* Make managed/BLE provider work when offline

## 3.1.10 (Monday, Dec 18th, 2017)
* Update MistSDK version to 1.1.2

## 3.1.9 (Thursday, Oct 19th, 2017)
* Update to PWCore version 3.1.3

## 3.1.8 (Friday, Oct 13th, 2017)
* Update MistSDK version to 1.1.1
* Update PWCore version to 3.1.2
* Optional use of pressure sensor to prevent floor hopping

## 3.1.7 (Monday, Aug 30th, 2017)
* Update Senion to 5.1
* Update PWCore version to 3.1.1
* Stability improvements to Mist

## 3.1.6 (Monday, Jul 31st, 2017)
* Update PWCore version to 3.1.0

##3.1.5 (Saturday, Jul 22nd, 2017)
* Update MistSDK version to 0.0.1144

## 3.1.4 (Friday, Jul 21st, 2017)
* Improvements to dead reckoning

## 3.1.3 (Friday, Jun 23rd, 2017)
* Further improvements on Mist conversion algorithm

## 3.1.2 (Friday, Jun 2nd, 2017)
* Improve Mist conversion algorithm

## 3.1.1 (Tuesday, Mar 28th, 2017)
* Improve algorithm for managed location provider.
* Add Mist location provider.
* Remove `VB token/Senion credential/CMX GUID` properties from PWManagedLocationManager, which can be read from bundle.

## 3.1.0 (Friday, Jan 27th, 2017)
* Initial release of Managed Provider.
* Upgrade SenionLab SDK from v4.8.0 to v4.9.0.

## 3.0.1 (Monday, October 24th, 2016)
* Upgrade SenionLab SDK from v4.5.4 to v4.8.0.

## 3.0.0 (Monday, July 25th, 2016)
* Upgrade SenionLab SDK from v4.1.2 to v4.5.4.
* Be able to auto re-bind for MSE location manager.

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
