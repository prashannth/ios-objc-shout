//
//  ShoutAPICall.h
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 13/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShoutFetch.h"
#import "Shout.h"

@interface ShoutFetchAPICall : NSObject

-(void) getFetchShout:(ShoutFetch *)fetchShoutObject;
@property (weak, nonatomic) id<ShoutFetchProtocol>delegate;
@end
