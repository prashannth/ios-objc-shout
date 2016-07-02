//
//  ShoutPostEchoShutupAPICall.h
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 13/09/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShoutPostEchoShutup.h"
@interface ShoutPostEchoShutupAPICall : NSObject

-(void) postEchoShutup:(ShoutPostEchoShutup *) postEchoShutupShoutObject;
@property (weak, nonatomic) id<ShoutPostEchoShutupProtocol>delegate;
@end
