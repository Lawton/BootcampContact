//
//  ContactDetailViewController.m
//  IOSBootcampContact
//
//  Created by TSD005 on 2016-01-05.
//  Copyright © 2016 TSD005. All rights reserved.
//

#import "ContactDetailViewController.h"

@interface ContactDetailViewController ()

@end
@implementation ContactDetailViewController
@synthesize firstNameLabel;
//user.picture.thumbnail
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * myURL =[self.contact valueForKeyPath: @"user.picture.thumbnail"];
    NSURL * imageURL = [NSURL URLWithString:myURL];
    self.firstNameLabel.text = [self.contact valueForKeyPath:@"user.name.first"];
    self.lastNameLabel.text = [self.contact valueForKeyPath:@"user.name.last"];
    dispatch_async(dispatch_get_global_queue(0,0), ^{
        NSData * data = [[NSData alloc] initWithContentsOfURL:imageURL];
        if (data == nil) {
            return;
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            self.contactImage.image = [UIImage imageWithData: data];
        });
    });
    
}
@end
