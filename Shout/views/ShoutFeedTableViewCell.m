//
//  ShoutFeedTableViewCell.m
//  Shout
//
//  Created by Thirukumaran Nagarajan on 22/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import "ShoutFeedTableViewCell.h"

@implementation ShoutFeedTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)echoButton:(id)sender {
}

- (IBAction)shutupButton:(id)sender {
}
@end
