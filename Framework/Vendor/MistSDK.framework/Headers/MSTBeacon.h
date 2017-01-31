//
//  Beacon.h
//  iOS
//
//  Created by Cisco on 6/23/15.
//  Copyright (c) 2015 Cisco . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSTBeacon : NSObject

@property (nonatomic, strong, readonly) NSUUID *uuid;
@property (nonatomic, readonly) int rssi;
@property (nonatomic, readonly) int major;
@property (nonatomic, readonly) int minor;

@end
