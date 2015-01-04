//
//  TableViewController.m
//  UITableViewControllerDemo
//
//  Created by xidanjueying on 14/12/2.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "CustomTableViewController.h"

@interface CustomTableViewController ()

@property NSArray *imageUrlList;

@end

@implementation CustomTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageUrlList = @[@"http://gtms02.alicdn.com/tps/i2/TB1CQ4rGFXXXXbEaXXXSutbFXXX.jpg",
                          @"http://gtms03.alicdn.com/tps/i3/TB1ElIjGXXXXXbdXVXX6HxE6VXX-90-100.jpeg",
                          @"http://img01.taobaocdn.com/bao/uploaded/TB1C6qQGFXXXXaGaXXXSutbFXXX.jpg_90x90.jpg",
                          @"http://gtms04.alicdn.com/tps/i4/TB1fwaYGFXXXXcdaXXXezUPJpXX-90-90.jpg",
                          @"http://gtms02.alicdn.com/tps/i2/TB1CQ4rGFXXXXbEaXXXSutbFXXX.jpg",
                          @"http://gtms03.alicdn.com/tps/i3/TB1ElIjGXXXXXbdXVXX6HxE6VXX-90-100.jpeg"];
    
    // 下拉刷新控件
    self.refreshControl = [[UIRefreshControl alloc] init];
    // 当表格显示时，清除表格的选中状态
    self.clearsSelectionOnViewWillAppear = YES;
    // 设置行高
    self.tableView.rowHeight = 80;
    // 导航条标题
    self.navigationItem.title = @"second";
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
    return [self.imageUrlList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1
                                      reuseIdentifier:CellIdentifier];
    }
    
    NSURL *url = [NSURL URLWithString:self.imageUrlList[indexPath.row]];
    UIImage *img = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
    
    cell.imageView.image = img;
    
    return cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
