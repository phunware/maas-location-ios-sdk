//
//  User.h
//  iOS
//
//  Created by Cisco on 6/23/15.
//  Copyright (c) 2015 Cisco . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MSTUser : NSObject

@property (nonatomic, strong, readonly) NSString *userName;
@property (nonatomic, strong, readonly) NSArray *userPermissions;
@property (nonatomic, strong, readonly) NSArray *clientsAssociated;

- (void) setUserName: (NSString *) userName;

@end
