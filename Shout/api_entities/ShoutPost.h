//
//  ShoutPost.h
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShoutPost : NSObject{
    
    NSString *userId;
    NSString *authToken;
    NSString *msg;
    NSString *lat;
    NSString *lng;
    NSString *imgAttached;
    NSString *network;
    NSString *isAlterEgo;
    NSString *locality;
    NSString *city;
    NSString *imageFile;
    
    NSString *isMuted;
    NSArray *result;
    NSArray *message;
    NSString *varApiUrl;
    NSString *success;
    NSString *testMode;

}

@property (retain, nonatomic) NSString *userId;
@property (retain, nonatomic) NSString *authToken;
@property (retain, nonatomic) NSString *lat;
@property (retain, nonatomic) NSString *lng;
@property (retain, nonatomic) NSString *msg;
@property (retain, nonatomic) NSString *imgAttached;
@property (retain, nonatomic) NSString *isAlterEgo;
@property (retain, nonatomic) NSString *network;
@property (retain, nonatomic) NSString *locality;
@property (retain, nonatomic) NSString *city;

@property (retain, nonatomic) NSString *varApiUrl;
@property (retain, nonatomic) NSString *isMuted;
@property (retain, nonatomic) NSArray *result;
@property (retain, nonatomic) NSArray *message;
@property (retain, nonatomic) NSString *success;
@property (retain, nonatomic) NSString *testMode;

-(NSURL *)makeUrl;

@end

@protocol ShoutPostProtocol <NSObject>

-(void)completionHandlerShoutPost:(ShoutPost *)postShoutObject;

@end
