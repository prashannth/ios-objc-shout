//
//  ShoutFetchComment.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutFetchComment.h"
#import "ShoutConstants.h"

@implementation ShoutFetchComment

@synthesize userId,authToken,shoutId,offset,limit,alterEgoId,message,varApiUrl,isMuted,result,testMode,success;

-(NSURL *)makeUrl{
    
    NSURL* finalApiUrl=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@?userId=%@&authToken=%@&shoutId=%@&offset=%@&limit=%@",constApiUrl,self.varApiUrl,self.userId,self.authToken,self.shoutId,self.offset,self.limit]];
    
    NSLog(@"%@",finalApiUrl);
    
    return finalApiUrl;
}

@end
