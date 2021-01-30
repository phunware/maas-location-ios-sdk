//
//  MistProvider.h
//  MistProvider
//
//  Created by Troy Stump on 8/3/20.
//  Copyright © 2020 Phunware. All rights reserved.
//

#import <Foundation/Foundation.h>
#if __has_include(<MistProvider/PWMistLocationManager+Provider.h>)
#import <MistProvider/PWMistLocationManager+Provider.h>
#else
#import "PWMistLocationManager+Provider.h"
#endif

static NSString * const MistProviderVersion = @"3.10.0";
