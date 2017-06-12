//
//  DetailedViewController.m
//  ScrollViewImageGallary
//
//  Created by Jimmy Hoang on 2017-06-12.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) UIImageView* imageView;

@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.delegate = self;
    UIImageView* imageView = [[UIImageView alloc] init];
    self.imageView = imageView;
    self.imageView.image = self.imageToZoom;
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollView addSubview:imageView];
    
    [imageView.leftAnchor constraintEqualToAnchor:self.scrollView.leftAnchor].active = YES;
    [imageView.rightAnchor constraintEqualToAnchor:self.scrollView.rightAnchor].active = YES;
    [imageView.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [imageView.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;

    self.scrollView.minimumZoomScale = 1;
    self.scrollView.maximumZoomScale = 3;
    
    
}

-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.imageView;
}


@end
