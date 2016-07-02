//
//  ShoutPost.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutPost.h"
#import "ShoutConstants.h"

@implementation ShoutPost

@synthesize result,varApiUrl,message,isMuted,userId,authToken,lat,lng,locality,network,city,imgAttached,isAlterEgo,msg,testMode,success;

-(NSURL *)makeUrl{
    
    NSURL* finalApiUrl=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@?userId=%@&authToken=%@&lat=%@&long=%@&locality=%@&network=%@&imgAttached=%@&city=%@",constApiUrl,self.varApiUrl,self.userId,self.authToken,self.lat,self.lng,self.locality,self.network,self.imgAttached,self.city]];
    
    NSLog(@"%@",finalApiUrl);
    
    return finalApiUrl;
}

@end
