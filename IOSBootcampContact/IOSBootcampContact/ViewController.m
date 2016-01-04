//
//  ViewController.m
//  IOSBootcampContact
//
//  Created by TSD005 on 2016-01-04.
//  Copyright © 2016 TSD005. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bugs = @[@"ladybug", @"catterpillar", @"beetle"];
    self.creatures = @[@"golem", @"troll", @"goblin"];
    // Do any additional setup after loading the view, typically from a nib.

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return NULL;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
