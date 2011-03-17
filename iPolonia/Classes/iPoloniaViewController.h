//
//  iPoloniaViewController.h
//  iPolonia
//
//  Created by igz on 09/03/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RSSEntry.h"
#import "ASIHTTPRequest.h"
#import "GDataXMLNode.h"
#import "GDataXMLElement-Extras.h"
#import "NSDate+InternetDateTime.h"
#import "NSArray+Extras.h"
#import "WebViewController.h"
#import "PullRefreshTableViewController.h"
#import "iPoloniaCell.h"

@class WebViewController;

@interface iPoloniaViewController : PullRefreshTableViewController {
	NSOperationQueue *_queue;
    NSArray *_feeds;
    NSMutableArray *_allEntries;
	NSMutableSet *entriesWithoutdup;
    WebViewController *_webViewController;
}

@property (retain) NSOperationQueue *queue;
@property (retain) NSArray *feeds;
@property (retain) NSMutableArray *allEntries;
@property (retain) NSMutableSet *entriesWithoutdup;
@property (retain) WebViewController *webViewController;

@end


