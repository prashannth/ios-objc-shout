//
//  ShoutFetchEchoUser.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutFetchEchoUser.h"
#import "ShoutConstants.h"

@implementation ShoutFetchEchoUser

@synthesize userId,authToken,shoutId,echoShutup,offset,limit,alterEgoId,message,varApiUrl,isMuted,result,testMode,success;

-(NSURL *)makeUrl{
    
    NSURL* finalApiUrl=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@?userId=%@&authToken=%@&offset=%@&limit=%@",constApiUrl,self.varApiUrl,self.userId,self.authToken,self.offset,self.limit]];
    
    NSLog(@"%@",finalApiUrl);
    
    return finalApiUrl;
}

@end
