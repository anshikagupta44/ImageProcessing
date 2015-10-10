//
//  SSViewController.m
//  TestColorControls
//
//  Created by chetu on 8/12/14.
//  Copyright (c) 2014 com.chetudeveloper.test. All rights reserved.
//

#import "SSViewController.h"
#import "UIImage+Brightness.h"
#import "UIImage+Contrast.h"

@interface SSViewController (){
    
    __weak IBOutlet UIImageView *imgView;
      __weak IBOutlet UISlider *sliderBrighness;
      __weak IBOutlet UISlider *sliderContrast;
}

@end

@implementation SSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onBrightnessChanged:(id)sender {
    imgView.image = [imgView.image imageWithContrast:sliderContrast.value brightness:sliderBrighness.value];
}
- (IBAction)onContrastChanged:(id)sender {
    imgView.image = [imgView.image imageWithContrast:sliderContrast.value brightness:sliderBrighness.value];
}

@end
