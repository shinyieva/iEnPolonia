//
//  iPoloniaAppDelegate.h
//  iPolonia
//
//  Created by igz on 09/03/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iPoloniaViewController;

@interface iPoloniaAppDelegate : NSObject <UIApplicationDelegate> {	
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
