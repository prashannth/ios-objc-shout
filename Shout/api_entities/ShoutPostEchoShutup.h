//
//  ShoutPostEchoShutup.h
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShoutPostEchoShutup : NSObject{
    
    NSString *userId;
    NSString *authToken;
    NSString *lat;
    NSString *lng;
    NSString *shoutId;
    NSString *echoShutup;
    
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
@property (retain, nonatomic) NSString *shoutId;
@property (retain, nonatomic) NSString *echoShutup;

@property (retain, nonatomic) NSString *varApiUrl;
@property (retain, nonatomic) NSString *isMuted;
@property (retain, nonatomic) NSArray *result;
@property (retain, nonatomic) NSArray *message;
@property (retain, nonatomic) NSString *success;
@property (retain, nonatomic) NSString *testMode;

-(NSURL *)makeUrl;

@end

@protocol ShoutPostEchoShutupProtocol <NSObject>

-(void)completionHandlerShoutPostEchoShutup:(ShoutPostEchoShutup *)postShoutEchoShutupObject;

@end
