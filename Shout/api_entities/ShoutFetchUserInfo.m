//
//  ShoutFetchUserInfo.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutFetchUserInfo.h"
#import "ShoutConstants.h"

@implementation ShoutFetchUserInfo

@synthesize userId,authToken,fetchUserId,message,varApiUrl,result,isMuted,testMode,success;

-(NSURL *)makeUrl{
    
    NSURL* finalApiUrl=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@?userId=%@&authToken=%@&fetchUserId=%@",constApiUrl,self.varApiUrl,self.userId,self.authToken,self.fetchUserId]];
    
    NSLog(@"%@",finalApiUrl);
    
    return finalApiUrl;
}

@end
