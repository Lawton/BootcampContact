//
//  ViewController.m
//  IOSBootcampContact
//
//  Created by TSD005 on 2016-01-04.
//  Copyright © 2016 TSD005. All rights reserved.
//

#import "ViewController.h"
#import "ContactDetailViewController.h"
#define peopleSection 0
#define numberOfSections 1
#define numberOfContacts 50

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];    
    [self getContacts];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case peopleSection:
            return [self.people count];
            break;
        default:
            return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"creatures"];
  //TODO add section for first letter of contacts
    switch (indexPath.section)
    {
        case peopleSection:
            cell.textLabel.text = [[self.people objectAtIndex:indexPath.row] valueForKeyPath:@"user.name.first"];
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
        case peopleSection:
            return @"People";
            break;
        default:
            return 0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) getContacts {
    NSString *urlString = [NSString stringWithFormat:@"http://api.randomuser.me/?results=%d", numberOfContacts] ;
    NSURL *randomContactURL = [NSURL URLWithString:urlString];
    NSURLSession *mySession = [NSURLSession sharedSession];
    [[mySession dataTaskWithURL:randomContactURL
              completionHandler:^(NSData *data,
                                  NSURLResponse *response,
                                  NSError *error) {
                  NSError *error1;
                  NSMutableDictionary *innerJson = [NSJSONSerialization
                                                     JSONObjectWithData:data
                                                     options:kNilOptions
                                                     error:&error1];
                  self.people = [innerJson objectForKey:@"results"];
                  dispatch_async(dispatch_get_main_queue(), ^{
                      [self.tableView reloadData];
                  });
              }] resume];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString: @"showContactDetail"]) {
        NSIndexPath * index = [self.tableView indexPathForSelectedRow];
        ContactDetailViewController * contactView = segue.destinationViewController;
        contactView.contact = [self.people objectAtIndex:index.row];
        
        
    }
}

@end
