//
//  ViewController.m
//  ScrollViewImageGallary
//
//  Created by Jimmy Hoang on 2017-06-12.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.delegate = self;
    self.scrollView.pagingEnabled = YES;
    
    UIImageView* image1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field"]];
    image1.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollView addSubview:image1];
    
    [image1.leadingAnchor constraintEqualToAnchor:self.scrollView.leadingAnchor].active = YES;
    [image1.centerYAnchor constraintEqualToAnchor:self.scrollView.centerYAnchor].active = YES;
    [image1.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor].active = YES;
    [image1.heightAnchor constraintEqualToAnchor:self.scrollView.heightAnchor].active = YES;
    
    UIImageView* image2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-night"]];
    image2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollView addSubview:image2];
    
    [image2.leadingAnchor constraintEqualToAnchor:image1.trailingAnchor].active = YES;
    [image2.centerYAnchor constraintEqualToAnchor:self.scrollView.centerYAnchor].active = YES;
    [image2.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor].active = YES;
    [image2.heightAnchor constraintEqualToAnchor:self.scrollView.heightAnchor].active = YES;

    UIImageView* image3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-zoomed"]];
    image3.translatesAutoresizingMaskIntoConstraints = NO;
    [self.scrollView addSubview:image3];
    
    [image3.leadingAnchor constraintEqualToAnchor:image2.trailingAnchor].active = YES;
    [image3.trailingAnchor constraintEqualToAnchor:self.scrollView.trailingAnchor].active = YES;
    [image3.centerYAnchor constraintEqualToAnchor:self.scrollView.centerYAnchor].active = YES;
    [image3.widthAnchor constraintEqualToAnchor:self.scrollView.widthAnchor].active = YES;
    [image3.heightAnchor constraintEqualToAnchor:self.scrollView.heightAnchor].active = YES;
 

}

@end
