//
//  ViewController.m
//  UIPickerViewDemo
//
//  Created by xidanjueying on 14/11/18.
//  Copyright (c) 2014年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSArray *itemList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.itemList = @[@"苹果", @"香蕉", @"橘子", @"菠萝", @"西瓜"];
    
    // 生成picker view的实例
    UIPickerView *view = [[UIPickerView alloc] init];
    CGSize viewSize = self.view.frame.size;
    // 设置控件的尺寸
    view.frame = CGRectMake(0, viewSize.height - view.frame.size.height, viewSize.width, 216);
    // 设置数据源
    view.dataSource = self;
    // 设置代理对象
    view.delegate = self;
    
    // 添加到父视图中显示
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 设定显示多少列（UIPickerViewDataSource协议必须实现的方法）
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

// 设置一列中显示多少行（UIPickerViewDataSource协议必须实现的方法）
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.itemList count];
}

// 设置列中每一行的标题（UIPickerViewDelegate的可选方法）
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (row < [self.itemList count]) {
        return self.itemList[row];
    }
    return @"";
}

// 可以通过该方法来自定义样式
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view {
    UILabel *pickerLabel = (UILabel *)view;
    
    if (!pickerLabel) {
        pickerLabel = [[UILabel alloc] init];
        pickerLabel.adjustsFontSizeToFitWidth = YES;
        pickerLabel.textAlignment = NSTextAlignmentCenter;
        pickerLabel.backgroundColor = [UIColor blackColor];
        pickerLabel.font = [UIFont boldSystemFontOfSize:18];
        pickerLabel.textColor = [UIColor yellowColor];
    }
    
    pickerLabel.text = [self pickerView:pickerView titleForRow:row forComponent:component];
    
    return pickerLabel;
}

@end
