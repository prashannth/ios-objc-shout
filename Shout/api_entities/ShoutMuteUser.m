//
//  ShoutMuteUser.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutMuteUser.h"
#import "ShoutConstants.h"

@implementation ShoutMuteUser

@synthesize result,varApiUrl,message,isMuted,muteUserId,userId,authToken,testMode,success;

-(NSURL *)makeUrl{
    
    NSURL* finalApiUrl=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@?userId=%@&authToken=%@&muteUserId=%@",constApiUrl,self.varApiUrl,self.userId,self.authToken,self.muteUserId]];
    
    NSLog(@"%@",finalApiUrl);
    
    return finalApiUrl;
}

@end
