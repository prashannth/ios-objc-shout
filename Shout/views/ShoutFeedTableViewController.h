//
//  ShoutFeedTableViewController.h
//  Shout
//
//  Created by Thirukumaran Nagarajan on 22/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

#import "ShoutFetch.h"
#import "ShoutPostEchoShutup.h"

#import "ShoutFetchAPICall.h"
#import "ShoutPostEchoShutupAPICall.h"

#import "ShoutFeedTableViewCell.h"
#import "ShoutCommentViewController.h"
#import "Shout.h"



@interface ShoutFeedTableViewController : UITableViewController<UIAlertViewDelegate,ShoutFetchProtocol,ShoutPostEchoShutupProtocol>{
    
    ShoutFetch *fetchShoutObject;
    ShoutPostEchoShutup *postEchoShutupObject;
    
    ShoutFetchAPICall *fetchShoutAPI;
    ShoutPostEchoShutupAPICall *postEchoShutupAPI;
    
    NSMutableArray *shoutIds;
    
    NSArray *message;
}

@end
