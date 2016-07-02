//
//  ShoutFetchNotificationCount.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 18/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutFetchNotificationCount.h"
#import "ShoutConstants.h"

@implementation ShoutFetchNotificationCount

@synthesize userId,authToken,alterEgoId,message,varApiUrl,result,isMuted,testMode,success;

-(NSURL *)makeUrl{
    
    NSURL* finalApiUrl=[NSURL URLWithString:[NSString stringWithFormat:@"%@%@?userId=%@&authToken=%@",constApiUrl,self.varApiUrl,self.userId,self.authToken]];
    
    NSLog(@"%@",finalApiUrl);
    
    return finalApiUrl;
}


@end
