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

    // if an error occured, log it
    if (error) {
        NSLog(@"Error! %@ %@", [error localizedDescription], [error userInfo]);
        
    } else {
        
        // Obtain root element
        TBXMLElement * root = tbxml.rootXMLElement;
        
        // if root element is valid
        if (root) {
            // search for the first author element within the root element's children
            TBXMLElement * author = [TBXML childElementNamed:@"author" parentElement:root];
            
            // if an author element was found
            while (author != nil) {
                
                
                // search the author's child elements for a book element
                TBXMLElement * book = [TBXML childElementNamed:@"book" parentElement:author];
                
                // if a book element was found
                while (book != nil) {
                    
                    // instantiate a book object
                    
                    // extract the title attribute from the book element
                    NSString *bookTitle = [TBXML valueOfAttributeNamed:@"title" forElement:book];
                    NSLog(@"bookTitle - %@", bookTitle);
                    // extract the title attribute from the book element
                    NSString * price = [TBXML valueOfAttributeNamed:@"price" forElement:book];
                    
                    // if we found a price
                    if (price != nil) {
                        // obtain the price from the book element
                        NSNumber * bookPrice = [NSNumber numberWithFloat:[price floatValue]];
                         NSLog(@"bookPrice - %@", bookPrice);
                    }
                    
                    // find the description child element of the book element
                    TBXMLElement * desc = [TBXML childElementNamed:@"description" parentElement:book];
                    
                    // if we found a description
                    if (desc != nil) {
                        // obtain the text from the description element
                        NSString *bookDesc = [TBXML textForElement:desc];
                         NSLog(@"bookDesc - %@", bookDesc);
                    }
                    
                    // find the next sibling element named "book"
                    book = [TBXML nextSiblingNamed:@"book" searchFromElement:book];
                }
                
                // add our author object to the authors array
                // find the next sibling element named "author"
                author = [TBXML nextSiblingNamed:@"author" searchFromElement:author];
            }			
        }
    }
    

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
