//
//  ShoutPostEchoShutup.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutPostEchoShutup.h"
#import "ShoutConstants.h"

@implementation ShoutPostEchoShutup

@synthesize result,varApiUrl,message,isMuted,echoShutup,userId,authToken,lng,lat,shoutId,testMode,success;

-(NSURL *)makeUrl{
    
    NSURL* finalApiUrl=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@?userId=%@&authToken=%@&lat=%@&long=%@&echoShutup=%@&shoutId=%@",constApiUrl,self.varApiUrl,self.userId,self.authToken,self.lat,self.lng,self.echoShutup,self.shoutId]];
    
    NSLog(@"%@",finalApiUrl);
    
    return finalApiUrl;
}

@end
