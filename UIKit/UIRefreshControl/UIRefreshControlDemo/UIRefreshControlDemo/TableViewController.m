//
//  TableViewController.m
//  test
//
//  Created by xidanjueying on 14/11/11.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 生成示例对象
    UIRefreshControl *refreshControl = [[UIRefreshControl alloc] init];
    // 设置“菊花”的颜色
    refreshControl.tintColor = [UIColor grayColor];
    // 设置“菊花”下的文案
    refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"下拉刷新"];
    // 监听状态的改变
    [refreshControl addTarget:self
                    action:@selector(refreshChanged:)
                    forControlEvents:UIControlEventValueChanged];
    // 设置 TableViewController 实例的 refreshControl属性
    self.refreshControl = refreshControl;
}

- (void)refreshChanged:(id)sender {
    // 类型转换
    UIRefreshControl *control = (UIRefreshControl *)sender;
    
    if (control.isRefreshing) { // 正在刷新状态
        control.attributedTitle = [[NSAttributedString alloc] initWithString:@"刷新中..."];
        // 延迟 2 秒后结束刷新
        [self performSelector:@selector(endRefresh) withObject:nil afterDelay: 2];
    } else {
        control.attributedTitle = [[NSAttributedString alloc] initWithString:@"下拉刷新"];
    }
}

- (void)endRefresh {
    [self.refreshControl endRefreshing]; // 结束刷新
    self.refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"下拉刷新"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

/*
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
 
 // Configure the cell...
 
 return cell;
 }
 */

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

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
 #pragma mark - Table view delegate
 
 // In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
 - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
 // Navigation logic may go here, for example:
 // Create the next view controller.
 <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:<#@"Nib name"#> bundle:nil];
 
 // Pass the selected object to the new view controller.
 
 // Push the view controller.
 [self.navigationController pushViewController:detailViewController animated:YES];
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
