//
//  ShoutAppDelegate.h
//  Shout
//
//  Created by GIRIDHARAN RAMASAMY on 13/08/14.
//  Copyright (c) 2014 Idea Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ShoutFeedTableViewController;

@interface ShoutAppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) ShoutFeedTableViewController *vController;
@end
