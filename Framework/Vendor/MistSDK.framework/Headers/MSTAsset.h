//
//  Asset.h
//  iOS
//
//  Created by Cisco on 6/23/15.
//  Copyright (c) 2015 Cisco . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSTZone.h"

@interface MSTAsset : NSObject

@property (nonatomic, strong, readonly) NSString *assetName;
@property (nonatomic, strong, readonly) NSArray *zoneList;

@end
