//
//  JVFloatLabeledTextFieldTableViewController.m
//  JVFloatLabeledTextField
//
//  Created by Alexander Rogachev on 2/26/18.
//  Copyright © 2018 Jared Verdi. All rights reserved.
//

#import "JVFloatLabeledTextFieldTableViewController.h"
#import "JVFloatLabeledTextViewCell.h"

static NSString* const kTextViewCellIdentifier = @"TextViewCell";

@interface JVFloatLabeledTextFieldTableViewController ()

@end

@implementation JVFloatLabeledTextFieldTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.estimatedRowHeight = 100;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    [self.tableView registerNib:[UINib nibWithNibName:@"JVFloatLabeledTextViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:kTextViewCellIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    JVFloatLabeledTextViewCell* cell = [tableView dequeueReusableCellWithIdentifier:kTextViewCellIdentifier];
    
    if (indexPath.row == 0) {
        cell.textView.text = @"lalalalala";
        cell.textView.placeholder = @" efficitur, tellus eu pulvinar vestibulum, felis massa semper purus, et finibus nisi libero non nulla. Praesent turpis arcu, scelerisque eget cursus sit a";
    } else if (indexPath.row == 1) {
        cell.textView.text = nil;
        cell.textView.placeholder = @" efficitur, tellus eu pulvinar vestibulum, felis massa semper purus, et finibus nisi libero non nulla. Praesent turpis arcu, scelerisque eget cursus sit a";
    } else {
        cell.textView.text = nil;
        cell.textView.placeholder = @"la";
    }
    
    return cell;
}

@end
