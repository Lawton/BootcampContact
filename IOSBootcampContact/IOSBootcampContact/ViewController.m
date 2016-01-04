//
//  ViewController.m
//  IOSBootcampContact
//
//  Created by TSD005 on 2016-01-04.
//  Copyright © 2016 TSD005. All rights reserved.
//

#import "ViewController.h"
#define bugSection 0
#define creatureSection 1
#define numberOfSections 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.bugs = [NSArray arrayWithObjects: @"ladybug", @"catterpillar", @"beetle", nil];
    self.creatures = [NSArray arrayWithObjects: @"golem", @"troll", @"goblin", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case bugSection:
            return [self.bugs count];
            break;
        case creatureSection:
            return [self.creatures count];
            break;
        default:
            return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"creatures"];
    
    switch (indexPath.section)
    {
            
        case bugSection:
            cell.textLabel.text = [self.bugs    objectAtIndex:indexPath.row];
            break;
        case creatureSection:
            cell.textLabel.text = [self.creatures     objectAtIndex:indexPath.row];
            break;
        default:
            cell.textLabel.text = @"Not Found";
            
    }
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return numberOfSections;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:   (NSInteger)section
{
    switch (section) {
        case bugSection:
            return @"Bugs";
            break;
        case creatureSection:
            return @"Creatures";
            break;
        default:
            return 0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
