//
//  Shout.h
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Shout : NSObject{
    NSString *shoutId;
    NSString *echoCount;
    NSString *shutupCount;
    NSString *commentCount;
    NSString *imgAttached;
    NSString *imgFileName;
    NSString *msg;
    NSString *network;
    NSString *postLat;
    NSString *postLong;
    NSString *postUserImage;
    NSString *postUserName;
    NSArray *shoutCreatedDate;
    NSString *sec;
    NSString *usec;
}

@property (strong, nonatomic) NSString *shoutId;
@property (strong, nonatomic) NSString *echoCount;
@property (strong, nonatomic) NSString *shutupCount;
@property (strong, nonatomic) NSString *commentCount;
@property (strong, nonatomic) NSString *imgAttached;
@property (strong, nonatomic) NSString *imgFileName;
@property (strong, nonatomic) NSString *msg;
@property (strong, nonatomic) NSString *network;
@property (strong, nonatomic) NSString *postLat;
@property (strong, nonatomic) NSString *postLong;
@property (strong, nonatomic) NSString *postUserImage;
@property (strong, nonatomic) NSString *postUserName;
@property (strong, nonatomic) NSArray *shoutCreatedDate;
@property (strong, nonatomic) NSString *sec;
@property (strong, nonatomic) NSString *usec;

@end
