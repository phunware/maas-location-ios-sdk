# PWLocation Migration Guide
## Upgrade from 3.1.x to 3.3.0

#### General

This release includes support for our new BLE provider, Locate.

#### Upgrade Steps

1. Open the `Podfile` from your project and change PWLocation to include `pod 'PWLocation', '3.3.0'`, then run `pod update` in the Terminal to update the framework. This is only necessary if using PWLocation by itself. Otherwise the correct version will be installed with PWMapKit if using it bundled.
