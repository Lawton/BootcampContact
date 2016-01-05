//
//  UIViewController_ContactDetailViewController.h
//  IOSBootcampContact
//
//  Created by TSD005 on 2016-01-05.
//  Copyright © 2016 TSD005. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactDetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *firstNameLabel;
@property (nonatomic, strong) NSDictionary *contact;

@end
