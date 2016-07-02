//
//  ShoutPostCommentAPICall.h
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 13/09/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShoutPostComment.h"
@interface ShoutPostCommentAPICall : NSObject

-(void) postComment:(ShoutPostComment *)postCommentShoutObject;
@property (weak, nonatomic) id<ShoutPostCommentProtocol>delegate;
@end
