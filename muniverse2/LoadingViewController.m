//
//  LoadingViewController.m
//  muniverse2
//
//  Created by Nick O'Neill on 11/6/12.
//  Copyright (c) 2012 Nick O'Neill. All rights reserved.
//

#import "LoadingViewController.h"

@interface LoadingViewController ()

@end

@implementation LoadingViewController

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
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    screenRect = CGRectMake(0, 0, screenRect.size.width, screenRect.size.height);

    [self.loadingImageView setImage:[UIImage imageNamed:@"LaunchImage-586h@2x.png"]];
    
    if (screenRect.size.height < 568) {
        [self.loadingImageView setImage:[UIImage imageNamed:@"LaunchImage@2x.png"]];
        [self.loadingImageView setFrame:screenRect];

        [self.loadingLabel setFrame:CGRectMake(self.loadingLabel.frame.origin.x, 300, self.loadingLabel.frame.size.width, self.loadingLabel.frame.size.height)];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
