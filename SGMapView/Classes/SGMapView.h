//
//  SGMapView.h
//
//  Created by mikechouto on 6/23/16.
//  Copyright © 2016 mikechouto. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface SGMapView : MKMapView

@property (nonatomic, readonly, assign) BOOL isSingleHandControlEnable;
@property (nonatomic, assign) BOOL enableSingleHandControl;

@end
