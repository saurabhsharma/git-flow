//
//  HomeViewController.m
//  git-flow
//
//  Created by Saurabh Sharma on 12/8/12.
//  Copyright (c) 2012 Saurabh Sharma. All rights reserved.
//

#import "HomeViewController.h"
#import "XmlViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)xmlBtnPressed:(id)sender {
    
    XmlViewController *xvc = [[XmlViewController alloc] init];
    [self.navigationController pushViewController:xvc animated:YES];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
