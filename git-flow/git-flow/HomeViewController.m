//
//  HomeViewController.m
//  git-flow
//
//  Created by Saurabh Sharma on 12/8/12.
//  Copyright (c) 2012 Saurabh Sharma. All rights reserved.
//

#import "HomeViewController.h"
#import "JsonViewController.h"
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


-(IBAction)jsonBtnPressed:(id)sender{
    
    JsonViewController *jvc = [[JsonViewController alloc] init];
    [self.navigationController pushViewController:jvc animated:YES];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
