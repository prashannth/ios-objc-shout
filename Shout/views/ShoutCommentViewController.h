//
//  ShoutCommentViewController.h
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 15/09/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Shout.h"
#import "ShoutPostEchoShutup.h"
#import "ShoutPostComment.h"

#import "ShoutPostCommentAPICall.h"
#import "ShoutPostEchoShutupAPICall.h"

@interface ShoutCommentViewController : UIViewController<UIAlertViewDelegate,ShoutPostCommentProtocol,ShoutPostEchoShutupProtocol>{
    NSString *commentShoutId;
    Shout *commentShout;
    
    ShoutPostEchoShutup *postEchoShutupObject;
    ShoutPostComment *postCommentObject;
    ShoutPostCommentAPICall *postCommentAPI;
    ShoutPostEchoShutupAPICall *postEchoShutupAPI;
    
}
@property (strong, nonatomic)NSString *commentShoutId;
@property (strong, nonatomic)Shout *commentShout;
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UIImageView *userImg;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UILabel *distance;
@property (weak, nonatomic) IBOutlet UILabel *msg;
@property (weak, nonatomic) IBOutlet UIImageView *msgImg;
@property (weak, nonatomic) IBOutlet UILabel *echoCount;
@property (weak, nonatomic) IBOutlet UILabel *shutupCount;
@property (weak, nonatomic) IBOutlet UILabel *commentCount;
@property (weak, nonatomic) IBOutlet UIButton *echoButton;
@property (weak, nonatomic) IBOutlet UIButton *shutupButton;
@property (weak, nonatomic) IBOutlet UIButton *commentButton;
@end
