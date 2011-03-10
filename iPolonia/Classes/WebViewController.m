//
//  WebViewController.m
//  RSSFun
//
//  Created by Ray Wenderlich on 1/24/11.
//  Copyright 2011 Ray Wenderlich. All rights reserved.
//

#import "WebViewController.h"
#import "RSSEntry.h"

@implementation WebViewController
@synthesize webView = _webView;
@synthesize entry = _entry;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	
	UIImage *itemImage = [UIImage imageNamed:@"back.png"]; 
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	[button setBackgroundImage:[itemImage stretchableImageWithLeftCapWidth:7.0 topCapHeight:0.0] forState:UIControlStateNormal];
	[button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
	[button setFrame:CGRectMake(0.0, 0.0, 40.0, 40.0)];
	
	UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithCustomView:button];
	
	self.navigationItem.leftBarButtonItem = back;
	[back release];
	back = nil;
}

- (void)back {
	[self.navigationController popViewControllerAnimated:YES];	
}

- (void)viewWillAppear:(BOOL)animated {
    
	self.navigationItem.title = _entry.articleTitle;
	
    NSURL *url = [NSURL URLWithString:_entry.articleUrl];    
    [_webView loadRequest:[NSURLRequest requestWithURL:url]];
    
}

- (void)viewWillDisappear:(BOOL)animated {
    
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"about:blank"]]];
    
}

- (void)webViewDidStartLoad:(UIWebView *)p_webView {
	[_loadingIndicator startAnimating];
	[_loading setHidden:NO];
}

- (void)webViewDidFinishLoad:(UIWebView *)p_webView {
	[_loadingIndicator stopAnimating];
	[_loading setHidden:YES];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [_entry release];
    _entry = nil;
    [_webView release];
    _webView = nil;
	[_loading release];
	_loading = nil;
	[_loadingIndicator release];
	_loadingIndicator = nil;
	
    [super dealloc];
}


@end
