//
//  ShoutFetchImage.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutFetchImage.h"
#import "ShoutConstants.h"

@implementation ShoutFetchImage

@synthesize userId,authToken,shoutId,varApiUrl,message,result,isMuted,testMode,success;

-(NSURL *)makeUrl{
    
    NSURL* finalApiUrl=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@?userId=%@&authToken=%@&shoutId=%@",constApiUrl,self.varApiUrl,self.userId,self.authToken,self.shoutId]];
    
    NSLog(@"%@",finalApiUrl);
    
    return finalApiUrl;
}

@end
