//
//  ShoutFetchUserShouts.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutFetchUserShouts.h"
#import "ShoutConstants.h"

@implementation ShoutFetchUserShouts

@synthesize userId,authToken,fetchUserId,isMuted,limit,message,varApiUrl,offset,result,testMode,success;

-(NSURL *)makeUrl{
    
    NSURL* finalApiUrl=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@?userId=%@&authToken=%@&fetchUserId=%@&offset=%@&limit=%@",constApiUrl,self.varApiUrl,self.userId,self.authToken,self.fetchUserId,self.offset,self.limit]];
    
    NSLog(@"%@",finalApiUrl);
    
    return finalApiUrl;
}

@end
