//
//  iPoloniaCell.h
//  iPolonia
//
//  Created by igz on 17/03/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface iPoloniaCell : UITableViewCell {
	IBOutlet UILabel *title;
	IBOutlet UIImageView *creator;
	IBOutlet UILabel *likes;
	IBOutlet UILabel *comments;
}	

@property (nonatomic,retain) UILabel *title;
@property (nonatomic,retain) UIImageView *creator;
@property (nonatomic,retain) UILabel *likes;
@property (nonatomic,retain) UILabel *comments;

@end
