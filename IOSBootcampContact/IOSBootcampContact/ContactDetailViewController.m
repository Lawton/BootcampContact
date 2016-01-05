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
- (void)viewDidLoad {
    [super viewDidLoad];
    self.firstNameLabel.text = [self.contact valueForKeyPath:@"user.name.first"];
}

@end
