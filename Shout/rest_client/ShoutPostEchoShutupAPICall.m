//
//  ShoutPostEchoShutupAPICall.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 13/09/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutPostEchoShutupAPICall.h"

@implementation ShoutPostEchoShutupAPICall
-(void) postEchoShutup:(ShoutPostEchoShutup *)postEchoShutupObject{
    
    
    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:[postEchoShutupObject makeUrl]] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        if (error) {
            NSLog(@"Error");
        } else {
            
            NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            postEchoShutupObject.success=[parsedObject valueForKey:@"success"];
            postEchoShutupObject.testMode=[parsedObject valueForKey:@"testMode"];
            postEchoShutupObject.message=[parsedObject valueForKey:@"message"];
            
            [[self delegate] completionHandlerShoutPostEchoShutup:postEchoShutupObject];
        }
    }];
    
}
@end
