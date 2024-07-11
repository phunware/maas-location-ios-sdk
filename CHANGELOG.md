# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [3.14.0][] - TBD

### Added

- Added privacy manifest

### Changed

- Improved nullability annotations
- Bumped minimum iOS deployment target to 15.5
- Updated to PWCore 3.13.0

## [3.13.2][] - 2024-05-17

### Removed

- Removed support for `stabilizeFloorSwitching` property in `PWManagedLocationManager`. 

## [3.13.1][] - 2023-08-30

### Changed

- Ignored inactive edges during the execution of the dead reckoning algorithm
- Updated to PWCore 3.12.2

## [3.13.0][] - 2022-11-29

### Changed

- Reduced location aquisition time for BLE location providers
- Removed deprecated location provider API

## [3.12.0][] - 2022-04-18

### Changed

- Removed deprecated signature key
- Improved network loading time

### Fixed

- Fixed a crash that would occur when a POI name is missing

## [3.11.0][] - 2021-07-28

### Changed

- Updated to PWCore 3.11.x
- iOS deployment target increased from 10.0 to 13.0
- Updated Mist SDK dependency to v1.5.280 for better accuracy

## [3.10.0][] - 2021-03-15

### Added

- Added support for campus routing

## [3.9.1][] - 2020-11-05

### Changed

- Built and archived SDK with Xcode 12

## [3.9.0][] - 2020-09-03

### Changed

- Migrated to use XCFrameworks
- Updated Mist SDK dependency to v1.5.272 for better accuracy (includes dead reckoning)
- Migrated Mist location provider into its own framework
- Migrated Beacon Point location provider into its own framework

## [3.8.6][] - 2020-03-16

### Changed

- Updated Mist location provider to support iOS 13+

### Fixed

- Fixed an issue with identifying beacons that include a major/minor value of 0
- Fixed an issue that could prevent location updates for some location providers

## [3.8.5][] - 2020-02-28

### Added

- Added support for ranging with CenTrak beacons

## [3.8.4][] - 2020-01-08

### Changed

- Improved accuracy of the managed compass
- Improved walking vs stationary detection
- Improved blue dot accuracy when transitioning between indoor and outdoor navigation
- Improved code stability and performance

## [3.8.3][] - 2019-11-15

### Changed

- Improved blue dot accuracy when initially transitioning from GPS to BLE location providers
- Improved managed compass
- Increased threshold for dead reckoning

## [3.8.2][] - 2019-09-25

### Changed

- Improved transition between GPS and BLE
- Improved blue dot accuracy
- Floor detection works better with GPS enabled

## [3.8.1][] - 2019-09-03

### Added

- Added subspec to import PWCoreNoAds pod

## [3.8.0][] - 2019-04-02

### Added

- Added ability to blend GPS with indoor location providers
- Added Managed Compass for use with PWMapKit to improve heading experience

## [3.7.1][] - 2019-02-26

### Changed

- Updated to use v3 Map API

## [3.7.0][] - 2019-01-10

### Changed

- Updated the status of the beacons heard by the device
- Updated to MistSDK 1.4.2

## [3.6.1][] - 2018-11-29

### Changed

- Updated to MistSDK 1.3.0

## [3.6.0][] - 2018-11-14

### Changed

- Updated to PWCore version 3.8.x

## [3.5.2][] - 2018-10-04

### Changed

- Updated Locate algorithm
- Improved Locate load time

## [3.5.1][] - 2018-08-15

### Changed

- Updated to PWCore version 3.7.x

## [3.5.0][] - 2018-07-31

### Changed

- Updated Locate algorithm
- iOS deployment target increased from 9.0 to 10.0

## [3.4.2][] - 2018-06-27

### Changed

- Updated Locate algorithm

## [3.4.1][] - 2018-05-31

### Changed

- Updated Locate algorithm

### Fixed

- Fixed CMX crash

## [3.4.0][] - 2018-05-07

### Changed

- Updated to PWCore version 3.5.x

### Removed

- Removed location permission prompting

## [3.3.4][] - 2018-04-16

### Added

- Exposed userInfo object from bundle download on `PWManagedLocationManager`

### Changed

- Updated Locate algorithm

## [3.3.2][] - 2018-03-20

### Changed

- Updated Locate algorithm

## [3.3.1][] - 2018-03-15

### Changed

- Updated Locate algorithm
- Cleaned up some logging

### Fixed

- Fixed crash when Locate has an invalid beacon UUID

## [3.3.0][] - 2018-02-22

### Added

- Added New BLE provider (Phunware Locate)
- Added additional error logging for troubleshooting

### Changed

- Updated to PWCore version 3.3.x

#### Bug fixes / performance enhancements

## [3.1.11][] - 2018-01-10

### Changed

- Make managed/BLE provider work when offline

## [3.1.10][] - 2017-12-18

### Changed

- Updated MistSDK version to 1.1.2

## [3.1.9][] - 2017-10-19

### Changed

- Updated to PWCore version 3.1.3

## [3.1.8][] - 2017-10-13

### Changed

- Updated MistSDK version to 1.1.1
- Updated PWCore version to 3.1.2
- Optional use of pressure sensor to prevent floor hopping

## [3.1.7][] - 2017-08-30

### Changed

- Updated Senion to 5.1
- Updated PWCore version to 3.1.1
- Stability improvements to Mist

## [3.1.6][] - 2017-07-31

### Changed

- Updated PWCore version to 3.1.0

## [3.1.5][] - 2017-07-22

### Changed

- Updated MistSDK version to 0.0.1144

## [3.1.4][] - 2017-07-21

### Changed

- Improved dead reckoning

## [3.1.3][] - 2017-06-23

### Changed

- Improved Mist conversion algorithm

## [3.1.2][] - 2017-06-02

### Changed

- Improved Mist conversion algorithm

## [3.1.1][] - 2017-03-28

### Added

- Added Mist location provider.

### Changed

- Improved algorithm for managed location provider.

### Removed

- Removed `VB token/Senion credential/CMX GUID` properties from PWManagedLocationManager, which can be read from bundle.

## [3.1.0][] - 2017-01-27

### Added

- Initial release of Managed Provider.

### Changed

- Upgrade SenionLab SDK from v4.8.0 to v4.9.0.

## [3.0.1][] - 2016-10-24

### Changed

- Upgrade SenionLab SDK from v4.5.4 to v4.8.0.

## [3.0.0][] - 2016-07-25

### Added

- Added ability to auto re-bind for MSE location manager.

### Changed

- Upgrade SenionLab SDK from v4.1.2 to v4.5.4.

## [1.2.0][] - 2015-09-30

### Changed

- Integrated with new PWCore v2.0.0 SDK
- Updated `PWSLIndoorLocationManager` dependencies

## [1.1.0][] - 2015-08-31

### Added

- Added a new location manager, `PWFusedLocationManager`, that allows you to fused multiple location manager updates based on polygons and floor identifiers. Please read more about this provider and how to use it here: https://developer.phunware.com/pages/viewpage.action?pageId=3409049
- Added `updateInterval` to `PWMSELocationManager` that allows you to modify the update frequency of the MSE location provider. The default update frequency is 2 seconds.
- Added `defaultHorizontalAccuracy` parameter to `PWMSELocationManager` that allows you to specify the accuracy of the MSE location updates returned. If a valid horizontal accuracy is returned as part of the location update this property will be ignored.

### Changed

- Updated `PWSLLocationManager` internals to provide more accurate and battery efficent location updates. **IMPORTANT**: This update changes the map identifier value used to initialize `PWSLLocationManager`. Please contact Phunware for your new map identifier values. These new values apply only to PWLocation v1.1.0 and beyond.

## [1.0.2][] - 2015-06-04

### Fixed

- Fixed an issue where `PWGPSLocationManager` would erroneously call failure callback when location authorization change callback was valid.

## [1.0.1][] - 2015-02-23

### Fixed

- Fixed issue where `PWGPSLocationManager` could cause a crash on iOS 7 devices when trying to access non-existent `floor` property

## [1.0.0][] - 2015-01-29

### Added

- Initial 1.0.0 GA release
- Added `PWGPSLocationManager` which is a convenient wrapper around `CLLocationManager`

## [0.9.3][] - 2014-11-12

### Changed

- Deprecated location parameter in `PWSLLocationManager` and `PWMSELocationManager` initializers
- Improved BLE background support in `PWSLLocationManager`

## [0.9.2][] - 2014-10-30

### Fixed

- Fixed issue where `PWMSELocationManager` was using x/y values instead of latitude/longitude values when returning a location

## [0.9.1][] - 2014-10-09

### Removed

- Removed distance check for MSELocationManager

### Fixed

- Fixed bugs related to MSE related location updates and registration

## [0.9.0][] - 2014-09-17

### Changed

- Improved documentation

### Fixed

- Fixed bugs related to BLE location updates
- Fixed bugs related to MSE related location updates

## [0.8.0][] - 2014-09-02

### Added

- Added mock location manager for location testing

### Fixed

- Fixed several issues with the SLLocationManager callback events not firing

## [0.5.0][] - 2014-06-18

### Added

- Initial release (BETA)

[3.13.2]: https://github.com/phunware/maas-location-ios-sdk/compare/3.13.2...3.14.0
[3.13.2]: https://github.com/phunware/maas-location-ios-sdk/compare/3.13.1...3.13.2
[3.13.1]: https://github.com/phunware/maas-location-ios-sdk/compare/3.13.0...3.13.1
[3.13.0]: https://github.com/phunware/maas-location-ios-sdk/compare/3.12.0...3.13.0
[3.12.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.11.0...3.12.0
[3.11.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.10.0...v3.11.0
[3.10.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.9.1...v3.10.0
[3.9.1]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.9.0...v3.9.1
[3.9.0]: https://github.com/phunware/maas-location-ios-sdk/compare/3.8.6...v3.9.0
[3.8.6]: https://github.com/phunware/maas-location-ios-sdk/compare/3.8.5...3.8.6
[3.8.5]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.8.4...3.8.5
[3.8.4]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.8.3...v3.8.4
[3.8.3]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.8.2...v3.8.3
[3.8.2]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.8.1...v3.8.2
[3.8.1]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.8.0...v3.8.1
[3.8.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.7.1...v3.8.0
[3.7.1]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.7.0....v3.7.1
[3.7.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.6.1...v3.7.0
[3.6.1]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.6.0...v3.6.1
[3.6.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.5.2...v3.6.0
[3.5.2]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.5.1...v3.5.2
[3.5.1]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.5.0...v3.5.1
[3.5.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.4.2...v3.5.0
[3.4.2]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.4.1...v3.4.2
[3.4.1]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.4.0...v3.4.1
[3.4.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.3.4...v3.4.0
[3.3.4]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.3.2...v3.3.4
[3.3.2]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.3.1...v3.3.2
[3.3.1]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.3.0...v3.3.1
[3.3.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.1.11...v3.3.0
[3.1.11]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.1.10...v3.1.11
[3.1.10]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.1.9...v3.1.10
[3.1.9]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.1.8...v3.1.9
[3.1.8]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.1.7...v3.1.8
[3.1.7]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.1.6...v3.1.7
[3.1.6]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.1.5...v3.1.6
[3.1.5]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.1.4...v3.1.5
[3.1.4]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.1.3...v3.1.4
[3.1.3]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.1.2...v3.1.3
[3.1.2]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.1.1...v3.1.2
[3.1.1]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.1.0...v3.1.1
[3.1.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.0.1...v3.1.0
[3.0.1]: https://github.com/phunware/maas-location-ios-sdk/compare/v3.0.0...v3.0.1
[3.0.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v1.2.0...v3.0.0
[1.2.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v1.0.2...v1.1.0
[1.0.2]: https://github.com/phunware/maas-location-ios-sdk/compare/v1.0.1...v1.0.2
[1.0.1]: https://github.com/phunware/maas-location-ios-sdk/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v0.9.3...v1.0.0
[0.9.3]: https://github.com/phunware/maas-location-ios-sdk/compare/v0.9.2...v0.9.3
[0.9.2]: https://github.com/phunware/maas-location-ios-sdk/compare/v0.9.1...v0.9.2
[0.9.1]: https://github.com/phunware/maas-location-ios-sdk/compare/v0.9.0...v0.9.1
[0.9.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v0.8.0...v0.9.0
[0.8.0]: https://github.com/phunware/maas-location-ios-sdk/compare/v0.5.0...v0.8.0
[0.5.0]: https://github.com/phunware/maas-location-ios-sdk/tree/v0.5.0
