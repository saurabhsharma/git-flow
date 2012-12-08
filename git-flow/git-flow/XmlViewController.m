//
//  XmlViewController.m
//  git-flow
//
//  Created by Saurabh on 08/12/12.
//  Copyright (c) 2012 Saurabh Sharma. All rights reserved.
//

#import "XmlViewController.h"
#import "TBXML.h"
@interface XmlViewController ()

@end

@implementation XmlViewController

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
    
    NSString *booksXml = [NSString stringWithFormat:@"%@/%@",[[NSBundle mainBundle] resourcePath],@"books.xml"];
    
    NSError *error;
    
    TBXML *tbxml = [TBXML newTBXMLWithXMLFile:booksXml error:&error];

    TBXMLElement * rootXMLElement = tbxml.rootXMLElement;

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
