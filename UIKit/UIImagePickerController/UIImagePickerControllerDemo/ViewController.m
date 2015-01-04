//
//  ViewController.m
//  UIImagePickerControllerDemo
//
//  Created by xidanjueying on 15/1/4.
//  Copyright (c) 2015年 xidanjueying. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIImageView *imageview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGSize size = [UIScreen mainScreen].bounds.size;
    
    self.imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    
    UIView *customView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, size.width, 50)];
    customView.backgroundColor = [UIColor blackColor];
    customView.center = self.view.center;
    
    UIButton * but1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    but1.frame = CGRectMake(0, 0, 160, 50);
    [but1 setTitle:@"相机" forState:UIControlStateNormal];
    [but1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [but1 addTarget:self action:@selector(fromCamera) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:but1];
    
    UIButton * but2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    but2.frame = CGRectMake(size.width - 160, 0, 160, 50);
    [but2 setTitle:@"相册" forState:UIControlStateNormal];
    [but2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [but2 addTarget:self action:@selector(fromPhotos) forControlEvents:UIControlEventTouchUpInside];
    [customView addSubview:but2];
    
    [self.view addSubview:self.imageview];
    [self.view addSubview:customView];
}

-(void) fromCamera {
    // 这里先判断是否有相机，如果没有弹窗警告
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        imagePicker.delegate = self;
        [self presentViewController:imagePicker animated:YES completion:nil];
    }else{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"相机不可用" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil]];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

-(void) fromPhotos {
    UIImagePickerController * imagePicker = [[UIImagePickerController alloc] init];
    /**
     UIImagePickerControllerSourceTypePhotoLibrary, // 图片库
     UIImagePickerControllerSourceTypeCamera, // 相机
     UIImagePickerControllerSourceTypeSavedPhotosAlbum // 相册
     */
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    imagePicker.delegate = self;
    // 允许编辑，照片上会出现编辑框
    // imagePicker.allowsEditing = YES;
    // 显示相册
    [self presentViewController:imagePicker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    self.imageview.image = [info valueForKey:@"UIImagePickerControllerOriginalImage"];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
