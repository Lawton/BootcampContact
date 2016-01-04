//
//  ViewController.h
//  IOSBootcampContact
//
//  Created by TSD005 on 2016-01-04.
//  Copyright © 2016 TSD005. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *bugs;
@property (strong, nonatomic) NSArray *creatures;

@end

