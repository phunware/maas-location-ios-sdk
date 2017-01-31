//
//  MSPoint.h
//  iOS
//
//  Created by Cisco on 6/22/15.
//  Copyright (c) 2015 Cisco . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, MSTPointType) {
    MSTPointTypeLE,
    MSTPointTypeDR,
    MSTPointTypeLast,
};

@interface MSTPoint : NSObject

@property (nonatomic) double x;
@property (nonatomic) double y;
@property (nonatomic) bool hasMotion;
@property (nonatomic) MSTPointType type;

-(id)initWithX:(double)x andY:(double)y;
-(id)initWithCGPoint:(CGPoint)point;
-(CGPoint)convertToCGPoint;

@end
