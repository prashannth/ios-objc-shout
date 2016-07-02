//
//  ShoutComment.h
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShoutComment : NSObject{
    NSString *userId;
    NSString *lat;
    NSString *lng;
    NSString *action;
    NSString *msg;
    NSString *userName;
    NSString *gcmRegistrationId;
    NSArray *createdDate;
    NSString *sec;
    NSString *usec;
}

@property (strong, nonatomic) NSString *userId;
@property (strong, nonatomic) NSString *lat;
@property (strong, nonatomic) NSString *lng;
@property (strong, nonatomic) NSString *action;
@property (strong, nonatomic) NSString *msg;
@property (strong, nonatomic) NSString *userName;
@property (strong, nonatomic) NSString *gcmRegistrationId;
@property (strong, nonatomic) NSArray *createdDate;
@property (strong, nonatomic) NSString *sec;
@property (strong, nonatomic) NSString *usec;


@end
