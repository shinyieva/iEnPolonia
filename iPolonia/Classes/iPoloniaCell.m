//
//  iPoloniaCell.m
//  iPolonia
//
//  Created by igz on 17/03/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iPoloniaCell.h"


@implementation iPoloniaCell

@synthesize title;
@synthesize creator;
@synthesize likes;
@synthesize comments;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
	self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
		
		
    }
    return self;
}

- (void)dealloc {
	[super dealloc];
}

@end
