//
//  ViewController.m
//  RadiusAvatar
//
//  Created by Yourtion on 14-2-15.
//  Copyright (c) 2014年 Yourtion. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Rounded imageView1 use image:Yourtion
    [self roundedImages:self.imageView1 :@"Yourtion"];
    
    //Rounded imageView1 and add border use image:Yourtion
    [self roundedImagesWithBorder:self.imageView2 :@"Yourtion"];
    
    //Just add radius use image:Yourtion
    [self radiusImages:self.imageView3 :@"Yourtion"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Rounded
-(void)roundedImages:(UIImageView *)view :(NSString *)images
{
    [view.layer setCornerRadius:CGRectGetHeight([view bounds]) / 2];
    view.layer.masksToBounds = YES;
    view.layer.contents = (id)[[UIImage imageNamed:images] CGImage];
}

//Rounded and add border
-(void)roundedImagesWithBorder:(UIImageView *)view :(NSString *)images
{
    [view.layer setCornerRadius:CGRectGetHeight([view bounds]) / 2];
    view.layer.masksToBounds = YES;
    view.layer.borderWidth = 2;
    view.layer.borderColor = [[UIColor grayColor] CGColor];
    view.layer.contents = (id)[[UIImage imageNamed:images] CGImage];
}

//Just add radius
-(void)radiusImages:(UIImageView *)view :(NSString *)images
{
    [view.layer setCornerRadius:CGRectGetHeight([view bounds]) / 10];
    view.layer.masksToBounds = YES;
    view.layer.contents = (id)[[UIImage imageNamed:images] CGImage];
}

@end
