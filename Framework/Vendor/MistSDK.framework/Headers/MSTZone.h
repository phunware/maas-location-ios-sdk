//
//  Zone.h
//  iOS
//
//  Created by Cisco on 6/23/15.
//  Copyright (c) 2015 Cisco . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSTClient.h"

@interface MSTZone : NSObject

@property (nonatomic, strong, readonly) NSString *zoneId;
@property (nonatomic, strong, readonly) NSArray *clientList;
@property (nonatomic, strong, readonly) NSArray *assetList;

@end
