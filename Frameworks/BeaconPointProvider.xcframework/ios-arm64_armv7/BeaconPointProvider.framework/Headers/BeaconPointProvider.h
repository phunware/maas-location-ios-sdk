//
//  BeaconPointProvider.h
//  BeaconPointProvider
//
//  Created by Troy Stump on 8/5/20.
//  Copyright © 2020 Phunware. All rights reserved.
//

#import <Foundation/Foundation.h>
#if __has_include(<BeaconPointProvider/PWBeaconPointLocationManager+Provider.h>)
#import <BeaconPointProvider/PWBeaconPointLocationManager+Provider.h>
#else
#import "PWBeaconPointLocationManager+Provider.h"
#endif

static NSString * const BeaconPointProviderVersion = @"3.9.2";
