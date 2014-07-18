PWLocation SDK for iOS (BETA)
================

Version 0.5.0

This is Phunware's iOS SDK for the Location module. Visit http://maas.phunware.com/ for more details and to sign up.



Requirements
------------

- MaaS Core v1.2.7 or greater
- iOS 7.0 or greater
- Xcode 4.4 or greater



Getting Started
---------------

- [Download PWLocation](https://github.com/phunware/maas-location-ios-sdk/archive/master.zip) and run the included sample app.
- Continue reading below for installation and integration instructions.
- Be sure to read the [documentation](http://phunware.github.io/maas-location-ios-sdk/) for additional details.



Installation
------------

The easiest way to use PWLocation is via CocoaPods. Simple add `pod PWLocation` to your `PodFile`. Alternatively:

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

TBD
