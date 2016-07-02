//
//  ShoutPostComment.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutPostComment.h"
#import "ShoutConstants.h"

@implementation ShoutPostComment

@synthesize result,varApiUrl,message,isMuted,comment,userId,authToken,lat,lng,shoutId,testMode,success;

-(NSURL *)makeUrl{
    
    NSURL* finalApiUrl=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@?userId=%@&authToken=%@&lat=%@&long=%@&shoutId=%@&comment=%@",constApiUrl,self.varApiUrl,self.userId,self.authToken,self.lat,self.lng,self.shoutId,self.comment]];
    
    NSLog(@"%@",finalApiUrl);
    
    return finalApiUrl;
}

@end
