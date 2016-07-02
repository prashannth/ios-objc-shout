//
//  ShoutPostCommentAPICall.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 13/09/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutPostCommentAPICall.h"

@implementation ShoutPostCommentAPICall

-(void) postComment:(ShoutPostComment *)postCommentObject{
    
    
    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:[postCommentObject makeUrl]] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        if (error) {
            NSLog(@"Error");
        } else {
            
            NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            postCommentObject.success=[parsedObject valueForKey:@"success"];
            postCommentObject.testMode=[parsedObject valueForKey:@"testMode"];
            postCommentObject.message=[parsedObject valueForKey:@"message"];
            
            [[self delegate] completionHandlerShoutPostComment:postCommentObject];
        }
    }];
    
}

@end
