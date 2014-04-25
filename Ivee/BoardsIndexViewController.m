//
//  BoardsIndexViewController.m
//  Ivee
//
//  Created by One on 4/19/14.
//  Copyright (c) 2014 Ram Ramakrishnan. All rights reserved.
//

#import "BoardsIndexViewController.h"

@interface BoardsIndexViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *names;

@end

@implementation BoardsIndexViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.names = @[@"Sophia", @"Simon", @"Ram"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.names.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    NSString *name = self.names[indexPath.row];
    //cell.textLabel.text = [NSString stringWithFormat:@"This is row %d", indexPath.row];
    cell.textLabel.text = name;
    
    return cell;
}

@end
