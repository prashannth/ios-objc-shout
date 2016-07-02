//
//  ShoutFetch.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 13/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutFetch.h"
#import "ShoutConstants.h"
@implementation ShoutFetch

@synthesize userId,authToken,offset,limit,publicNetwork,liveTrending,lat,lng,distance,varApiUrl,result,message,alterEgoId,gcmRegistrationId,isMuted,getAlterEgo,testMode,success;

-(NSURL *)makeUrl{
    
    NSURL* finalApiUrl=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@?userId=%@&authToken=%@&offset=%@&limit=%@&publicNetwork=%@&liveTrending=%@&lat=%@&long=%@&distance=%@",constApiUrl,self.varApiUrl,self.userId,self.authToken,self.offset,self.limit,self.publicNetwork,self.liveTrending,self.lat,self.lng,self.distance]];
    
    NSLog(@"%@",finalApiUrl);
    
    return finalApiUrl;
}

@end
