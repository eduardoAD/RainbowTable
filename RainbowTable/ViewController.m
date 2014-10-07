//
//  ViewController.m
//  RainbowTable
//
//  Created by Eduardo Alvarado Díaz on 10/6/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property NSArray *colorsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.colorsArray = [NSArray arrayWithObjects:[UIColor redColor],
                        [UIColor orangeColor],
                        [UIColor yellowColor],
                        [UIColor greenColor],
                        [UIColor blueColor],
                        [UIColor colorWithRed:(75.0/255.0) green:(0/255.00) blue:(130.0/255.0) alpha:(1)],
                        [UIColor purpleColor],
                        nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.colorsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"colorCellId" forIndexPath:indexPath];

    //Its gonna dequeue, it will reuse the cells, so it doesnt have to create thousands of cells
    //Depending of the object is next, it put the cell.
    //cell.textLabel.text = [NSString stringWithFormat: @"row %i",

    //cell.textLabel.text = [NSString stringWithFormat: @"row %li", (long)indexPath.row];
    cell.backgroundColor = [self.colorsArray objectAtIndex:indexPath.row];
    
    return cell;
}

@end
