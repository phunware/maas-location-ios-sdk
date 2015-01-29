#PWLocation Changelog

##1.0.0 (Thursday, January 29th, 2015)
* Initial 1.0.0 GA release
* Added `PWGPSLocationManager` which is a convenient wrapper around `CLLocationManager`

##0.9.3 (Wednesday, November 12th, 2014)
 * Deprecating location parameter in `PWSLLocationManager` and `PWMSELocationManager` initializers
 * Improved BLE background support in `PWSLLocationManager`


##0.9.2 (Thursday, October 30th, 2014)
 * Fixed issue where `PWMSELocationManager` was using x/y values instead of latitude/longitude values when returning a location

##0.9.1 (Thursday, October 9th, 2014)
 * Several bug fixes related to MSE related location updates and registration
 * Removed distance check for MSELocationManager


##0.9.0 (BETA) (Wednesday, September 17th, 2014)
 * Several bug fixes related to BLE location updates
 * Several bug fixes related to MSE related location updates
 * Improved documentation

##0.8.0 (Tuesday, September 2nd, 2014)
 * Added mock location manager for location testing
 * Fixed several issues with the SLLocationManager callback events not firing

##0.5.0 (Friday, June 18th, 2014)
 * Initial release (BETA)