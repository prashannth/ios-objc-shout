//
//  ShoutFeedTableViewCell.h
//  Shout
//
//  Created by Thirukumaran Nagarajan on 22/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShoutFeedTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *userName;
@property (weak, nonatomic) IBOutlet UILabel *msg;
@property (weak, nonatomic) IBOutlet UIImageView *userImg;
@property (weak, nonatomic) IBOutlet UIImageView *msgImg;
@property (weak, nonatomic) IBOutlet UILabel *echoCount;
@property (weak, nonatomic) IBOutlet UILabel *commentCount;
@property (weak, nonatomic) IBOutlet UILabel *shutupCount;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UILabel *distance;
@property (weak, nonatomic) IBOutlet UIButton *commentButton;
@property (weak, nonatomic) IBOutlet UIButton *echoButton;
@property (weak, nonatomic) IBOutlet UIButton *shutupButton;
@end
