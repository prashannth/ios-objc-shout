//
//  ShoutFetchNotification.h
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShoutFetchNotification : NSObject{

    NSString *userId;
    NSString *authToken;
    NSString *offset;
    NSString *limit;
    NSString *alterEgoId;
    
    NSString *isMuted;
    NSArray *result;
    NSArray *message;
    NSString *varApiUrl;
    NSString *success;
    NSString *testMode;
    
}

@property (retain, nonatomic) NSString *userId;
@property (retain, nonatomic) NSString *authToken;
@property (retain, nonatomic) NSString *offset;
@property (retain, nonatomic) NSString *limit;
@property (retain, nonatomic) NSString *alterEgoId;

@property (retain, nonatomic) NSString *varApiUrl;
@property (retain, nonatomic) NSString *isMuted;
@property (retain, nonatomic) NSArray *result;
@property (retain, nonatomic) NSArray *message;
@property (retain, nonatomic) NSString *success;
@property (retain, nonatomic) NSString *testMode;

-(NSURL *)makeUrl;

@end

@protocol ShoutFetchNotificationProtocol <NSObject>

-(void)completionHandlerShoutFetchNotification:(ShoutFetchNotification *)fetchShoutNotificationObject;

@end
