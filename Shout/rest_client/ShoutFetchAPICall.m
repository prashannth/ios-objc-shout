//
//  ShoutAPICall.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 13/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutFetchAPICall.h"

@implementation ShoutFetchAPICall

-(void) getFetchShout:(ShoutFetch *)fetchShoutObject{
    
    
    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:[fetchShoutObject makeUrl]] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        
        if (error) {
            NSLog(@"Error");
        } else {
            
            NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            
            NSMutableArray *shouts = [[NSMutableArray alloc] init];
            NSArray *results = [parsedObject valueForKey:@"Shout"];
            fetchShoutObject.result=results;
            
            for (NSDictionary *shoutDic in results) {
                Shout *shout = [[Shout alloc] init];
                
                for (NSString *key in shoutDic) {
                    if ([shout respondsToSelector:NSSelectorFromString(key)]) {
                        [shout setValue:[shoutDic valueForKey:key] forKey:key];
                    }
                }
                
                [shouts addObject:shout];
            }
            fetchShoutObject.message=shouts;
            fetchShoutObject.success=[parsedObject valueForKey:@"success"];
            fetchShoutObject.testMode=[parsedObject valueForKey:@"testMode"];
            
            [[self delegate] completionHandlerShoutFetch:fetchShoutObject];
        }
    }];

}
@end
