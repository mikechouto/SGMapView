//
//  SGViewController.m
//  SGMapView
//
//  Created by mikechouto on 08/18/2016.
//  Copyright (c) 2016 mikechouto. All rights reserved.
//

#import "SGViewController.h"
@import SGMapView;

@interface SGViewController ()<CLLocationManagerDelegate>

@property (strong, nonatomic) CLLocationManager *locationManager;
@property (weak, nonatomic) IBOutlet SGMapView *mapView;

@end

@implementation SGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.locationManager = [[CLLocationManager alloc] init];
    [self.locationManager setDelegate:self];
    [self.locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    [self.locationManager startUpdatingLocation];
    
    [self.mapView setEnableSingleHandControl:YES];

}

#pragma mark CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status {
    switch (status) {
        case kCLAuthorizationStatusNotDetermined:
            [manager requestWhenInUseAuthorization];
            break;
        case kCLAuthorizationStatusAuthorizedWhenInUse:
            [manager startUpdatingLocation];
            break;
        default:
            break;
    }
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    if (locations.count > 0) {
        
        CLLocation *location = [locations firstObject];
        MKCoordinateRegion coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, 5000, 5000);
        [self.mapView setRegion:coordinateRegion animated:YES];
        
        if (!self.mapView.showsUserLocation) {
            [self.mapView setShowsUserLocation:YES];
        }
        [manager stopUpdatingLocation];
    }
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"Error finding location: %@", error.localizedDescription);
}


@end
