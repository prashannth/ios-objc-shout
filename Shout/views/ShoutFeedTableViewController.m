//
//  ShoutFeedTableViewController.m
//  Shout
//
//  Created by Thirukumaran Nagarajan on 22/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutFeedTableViewController.h"

@implementation ShoutFeedTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    fetchShoutObject=[[ShoutFetch alloc] init];
    postEchoShutupObject=[[ShoutPostEchoShutup alloc]init];
   
    fetchShoutAPI=[[ShoutFetchAPICall alloc] init];
    postEchoShutupAPI=[[ShoutPostEchoShutupAPICall alloc]init];
    
    fetchShoutObject.userId=[NSString stringWithFormat:@"53434b582e2b8d332d2b0f4f"];
    fetchShoutObject.authToken=[NSString stringWithFormat:@"9023858489"];
    fetchShoutObject.publicNetwork=[NSString stringWithFormat:@"2"];
    fetchShoutObject.liveTrending=[NSString stringWithFormat:@"1"];
    fetchShoutObject.offset=[NSString stringWithFormat:@"0"];
    fetchShoutObject.limit=[NSString stringWithFormat:@"10"];
    fetchShoutObject.lat=[NSString stringWithFormat:@"12.9"];
    fetchShoutObject.lng=[NSString stringWithFormat:@"77.6"];
    fetchShoutObject.distance=[NSString stringWithFormat:@"40"];
    fetchShoutObject.varApiUrl=[NSString stringWithFormat:@"fetchshouts"];
    
    
    [fetchShoutAPI setDelegate:self];
    [fetchShoutAPI getFetchShout:fetchShoutObject];
    

}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"%d",fetchShoutObject.message.count);
    return fetchShoutObject.message.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ShoutFeedTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"shoutFeedCell"];
    if (!cell)
    {
        [tableView registerNib:[UINib nibWithNibName:@"ShoutFeedTableViewCell" bundle:nil] forCellReuseIdentifier:@"shoutFeedCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"shoutFeedCell"];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(ShoutFeedTableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    Shout *shout=message[indexPath.row];
    [cell.userName setText:shout.postUserName];
    [cell.msg setText:shout.msg];
    [cell.time setHidden:TRUE];
    [cell.distance setHidden:TRUE];
    NSArray *sId=[fetchShoutObject.result[indexPath.row] valueForKey:@"_id"];
    NSString *shoutId=[sId valueForKey:@"$id"];
    [shoutIds addObject:shoutId];
    
    if (shout.echoCount!=nil&&shout.echoCount!=0) {
        [cell.echoCount setText:[NSString stringWithFormat:@"Echo:%@",shout.echoCount]];
    }
    else{
        [cell.echoCount setHidden:TRUE];
    }
    if (shout.shutupCount!=nil&&shout.shutupCount!=0) {
        [cell.shutupCount setText:[NSString stringWithFormat:@"Shutup:%@",shout.shutupCount]];
    }
    else{
        [cell.shutupCount setHidden:TRUE];
    }
    if (shout.commentCount!=nil&&shout.commentCount!=0) {
        [cell.commentCount setText:[NSString stringWithFormat:@"Comment:%@",shout.commentCount]];
    }
    else{
        [cell.commentCount setHidden:TRUE];
    }

    NSURL *imageURL=[NSURL URLWithString:shout.postUserImage];
    NSURL *msgURL=[NSURL URLWithString:[NSString stringWithFormat:@"http://shouuut.com%@",shout.imgFileName]];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND,0),^{
        NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
        NSData *msgData = [NSData dataWithContentsOfURL:msgURL];
        
        dispatch_async(dispatch_get_main_queue(),^{
            //User Image
            cell.userImg.layer.masksToBounds = YES;
            cell.userImg.layer.cornerRadius=25;
            cell.userImg.image=[UIImage imageWithData:imageData];
            //Message Image
            if (shout.imgFileName!= nil) {
                cell.msgImg.contentMode = UIViewContentModeScaleAspectFill;
                cell.msgImg.clipsToBounds = YES;
                cell.msgImg.layer.masksToBounds = YES;
                cell.msgImg.image=[UIImage imageWithData:msgData];
            }
            else{
                [cell.msgImg setHidden:TRUE];
                //cell.msgImg.frame = CGRectMake(0,0,0,0);
                //cell.echoCount.frame=cell.msgImg.frame;
                }
            
        });
    });
  
    cell.echoButton.tag=indexPath.row;
    cell.shutupButton.tag=indexPath.row;
    cell.commentButton.tag=indexPath.row;
    
    [cell.echoButton addTarget:self action:@selector(echoAction:) forControlEvents:UIControlEventTouchUpInside];
    [cell.shutupButton addTarget:self action:@selector(shutupAction:) forControlEvents:UIControlEventTouchUpInside];
    [cell.commentButton addTarget:self action:@selector(commentAction:) forControlEvents:UIControlEventTouchUpInside];

}

-(void)echoAction:(UIButton*)sender{
    
    
    postEchoShutupObject.userId=[NSString stringWithFormat:@"53434b582e2b8d332d2b0f4f"];
    postEchoShutupObject.authToken=[NSString stringWithFormat:@"9023858489"];
    postEchoShutupObject.lat=[NSString stringWithFormat:@"12.9"];
    postEchoShutupObject.lng=[NSString stringWithFormat:@"77.6"];
    postEchoShutupObject.shoutId=[NSString stringWithFormat:@"%@",shoutIds[sender.tag]];
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
    postEchoShutupObject.shoutId=[NSString stringWithFormat:@"%@",shoutIds[sender.tag]];
    postEchoShutupObject.echoShutup=[NSString stringWithFormat:@"2"];
    postEchoShutupObject.varApiUrl=[NSString stringWithFormat:@"postechoshutup"];
 
    [postEchoShutupAPI setDelegate:self];
    [postEchoShutupAPI postEchoShutup:postEchoShutupObject];
    
}
-(void)commentAction:(UIButton*)sender{
   
    ShoutCommentViewController *commentView = [[ShoutCommentViewController alloc] init];
    commentView.commentShoutId=shoutIds[sender.tag];
    commentView.commentShout=message[sender.tag];
    [self presentViewController:commentView animated:YES completion:nil];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ShoutFeedTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"shoutFeedCell"];
    if (!cell)
    {
        [tableView registerNib:[UINib nibWithNibName:@"ShoutFeedTableViewCell" bundle:nil] forCellReuseIdentifier:@"shoutFeedCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"shoutFeedCell"];
    }
    return cell.bounds.size.height;
}

 - (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)completionHandlerShoutFetch:(ShoutFetch *)fetchShoutObj
{
    shoutIds=[[NSMutableArray alloc]init];
    fetchShoutObject=fetchShoutObj;
    message=fetchShoutObj.message;
    NSLog(@"Reloading Table");
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
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

@end
