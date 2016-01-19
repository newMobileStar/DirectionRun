//
//  ViewController.m
//  DirectionRun
//
//  Created by New Star on 1/19/16.
//  Copyright © 2016 NewMobileStar. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)onClickDirectionBtn:(id)sender {
    
    double destinationLatitude = 37.785834;
    double destinationLongitude = -122.406417;
    
    CLLocationCoordinate2D destinationLocation = CLLocationCoordinate2DMake(destinationLatitude,destinationLongitude);
    MKPlacemark *placemark = [[MKPlacemark alloc] initWithCoordinate:destinationLocation addressDictionary:nil];
    MKMapItem *item = [[MKMapItem alloc] initWithPlacemark:placemark];
    item.name = @"Destination Location";
    [item openInMapsWithLaunchOptions:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
