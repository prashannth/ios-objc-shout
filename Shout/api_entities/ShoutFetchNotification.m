//
//  ShoutFetchNotification.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutFetchNotification.h"
#import "ShoutConstants.h"

@implementation ShoutFetchNotification

@synthesize userId,authToken,offset,limit,alterEgoId,message,varApiUrl,result,isMuted,testMode,success;

-(NSURL *)makeUrl{
    
    NSURL* finalApiUrl=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@?userId=%@&authToken=%@&offset=%@&limit=%@",constApiUrl,self.varApiUrl,self.userId,self.authToken,self.offset,self.limit]];
    
    NSLog(@"%@",finalApiUrl);
    
    return finalApiUrl;
}


@end
