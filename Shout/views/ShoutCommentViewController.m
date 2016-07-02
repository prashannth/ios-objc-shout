//
//  ShoutCommentViewController.m
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 15/09/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutCommentViewController.h"

@implementation ShoutCommentViewController
@synthesize commentShout,commentShoutId;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    postCommentObject=[[ShoutPostComment alloc] init];
    postEchoShutupObject=[[ShoutPostEchoShutup alloc]init];
    
    postCommentAPI=[[ShoutPostCommentAPICall alloc] init];
    postEchoShutupAPI=[[ShoutPostEchoShutupAPICall alloc]init];
    
    
    [_userName setText:commentShout.postUserName];
    [_msg setText:commentShout.msg];
    [_time setHidden:TRUE];
    [_distance setHidden:TRUE];
    
    if (commentShout.echoCount!=nil&&commentShout.echoCount!=0) {
        [_echoCount setText:[NSString stringWithFormat:@"Echo:%@",commentShout.echoCount]];
    }
    else{
        [_echoCount setHidden:TRUE];
    }
    if (commentShout.shutupCount!=nil&&commentShout.shutupCount!=0) {
        [_shutupCount setText:[NSString stringWithFormat:@"Shutup:%@",commentShout.shutupCount]];
    }
    else{
        [_shutupCount setHidden:TRUE];
    }
    if (commentShout.commentCount!=nil&&commentShout.commentCount!=0) {
        [_commentCount setText:[NSString stringWithFormat:@"Comment:%@",commentShout.commentCount]];
    }
    else{
        [_commentCount setHidden:TRUE];
    }
    
    NSURL *imageURL=[NSURL URLWithString:commentShout.postUserImage];
    NSURL *msgURL=[NSURL URLWithString:[NSString stringWithFormat:@"http://shouuut.com%@",commentShout.imgFileName]];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND,0),^{
        NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
        NSData *msgData = [NSData dataWithContentsOfURL:msgURL];
        
        dispatch_async(dispatch_get_main_queue(),^{
            //User Image
            _userImg.layer.masksToBounds = YES;
            _userImg.layer.cornerRadius=30;
            _userImg.image=[UIImage imageWithData:imageData];
            //Message Image
            if (commentShout.imgFileName!= nil) {
                _msgImg.contentMode = UIViewContentModeScaleAspectFill;
                _msgImg.clipsToBounds = YES;
                _msgImg.layer.masksToBounds = YES;
                _msgImg.image=[UIImage imageWithData:msgData];
            }
            else{
                [_msgImg setHidden:TRUE];
                //cell.msgImg.frame = CGRectMake(0,0,0,0);
                //cell.echoCount.frame=cell.msgImg.frame;
            }
            
        });
    });
    
    [_echoButton addTarget:self action:@selector(echoAction:) forControlEvents:UIControlEventTouchUpInside];
    [_shutupButton addTarget:self action:@selector(shutupAction:) forControlEvents:UIControlEventTouchUpInside];
    [_commentButton addTarget:self action:@selector(commentAction:) forControlEvents:UIControlEventTouchUpInside];
    [_commentButtonBottom addTarget:self action:@selector(commentAction:) forControlEvents:UIControlEventTouchUpInside];

}
-(void)echoAction:(UIButton*)sender{
    
    
    postEchoShutupObject.userId=[NSString stringWithFormat:@"53434b582e2b8d332d2b0f4f"];
    postEchoShutupObject.authToken=[NSString stringWithFormat:@"9023858489"];
    postEchoShutupObject.lat=[NSString stringWithFormat:@"12.9"];
    postEchoShutupObject.lng=[NSString stringWithFormat:@"77.6"];
    postEchoShutupObject.shoutId=[NSString stringWithFormat:@"%@",commentShoutId];
    postEchoShutupObject.echoShutup=[NSString stringWithFormat:@"1"];
    postEchoShutupObject.varApiUrl=[NSString stringWithFormat:@"postechoshutup"];
    
    [postEchoShutupAPI setDelegate:self];
    [postEchoShutupAPI postEchoShutup:postEchoShutupObject];
    
}
-(void)shutupAction:(UIButton*)sender{
    
    postEchoShutupObject.userId=[NSString stringWithFormat:@"53434b582e2b8d332d2b0f4f"];
    postEchoShutupObject.authToken=[NSString stringWithFormat:@"9023858489"];
    postEchoShutupObject.lat=[NSString stringWithFormat:@"12.9"];
    postEchoShutupObject.lng=[NSString stringWithFormat:@"77.6"];
    postEchoShutupObject.shoutId=[NSString stringWithFormat:@"%@",commentShoutId];
    postEchoShutupObject.echoShutup=[NSString stringWithFormat:@"2"];
    postEchoShutupObject.varApiUrl=[NSString stringWithFormat:@"postechoshutup"];
    
    [postEchoShutupAPI setDelegate:self];
    [postEchoShutupAPI postEchoShutup:postEchoShutupObject];
    
}
-(void)commentAction:(UIButton*)sender{
    postCommentObject.userId=[NSString stringWithFormat:@"53434b582e2b8d332d2b0f4f"];
    postCommentObject.authToken=[NSString stringWithFormat:@"9023858489"];
    postCommentObject.lat=[NSString stringWithFormat:@"12.9"];
    postCommentObject.lng=[NSString stringWithFormat:@"77.6"];
    postCommentObject.shoutId=[NSString stringWithFormat:@"%@",commentShoutId];
    postCommentObject.comment=[NSString stringWithFormat:@"%@",_commentText.text];
    postCommentObject.varApiUrl=[NSString stringWithFormat:@"postechoshutup"];
    
    [postCommentAPI setDelegate:self];
    [postCommentAPI postComment:postCommentObject];
    
}
-(void)completionHandlerShoutPostEchoShutup:(ShoutPostEchoShutup *)postShoutEchoShutupObject{
    NSString *popupmessage=[NSString stringWithFormat:@"%@",postShoutEchoShutupObject.message];
    NSLog(@"%@",popupmessage);
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Info"
                                                    message:popupmessage
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
    
}
-(void)completionHandlerShoutPostComment:(ShoutPostComment *)postShoutCommentObject{
    NSString *popupmessage=[NSString stringWithFormat:@"%@",postShoutCommentObject.message];
    NSLog(@"%@",popupmessage);
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Info"
                                                    message:popupmessage
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
