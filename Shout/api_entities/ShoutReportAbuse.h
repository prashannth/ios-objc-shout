//
//  ShoutReportAbuse.h
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShoutReportAbuse : NSObject{
    
    NSString *userId;
    NSString *authToken;
    NSString *shoutId;
    
    NSString *isMuted;
    NSArray *result;
    NSArray *message;
    NSString *varApiUrl;
    NSString *success;
    NSString *testMode;

}

@property (retain, nonatomic) NSString *userId;
@property (retain, nonatomic) NSString *authToken;
@property (retain, nonatomic) NSString *shoutId;

@property (retain, nonatomic) NSString *varApiUrl;
@property (retain, nonatomic) NSString *isMuted;
@property (retain, nonatomic) NSArray *result;
@property (retain, nonatomic) NSArray *message;
@property (retain, nonatomic) NSString *success;
@property (retain, nonatomic) NSString *testMode;

-(NSURL *)makeUrl;

@end

@protocol ShoutReportAbuseProtocol <NSObject>

-(void)completionHandlerShoutReportAbuse:(ShoutReportAbuse *)reportShoutAbuseObject;

@end
