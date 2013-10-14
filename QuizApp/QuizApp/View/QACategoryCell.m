//
//  QACategoryCell.m
//  QuizApp
//
//  Created by Johannes Ekberg on 2013-10-14.
//  Copyright (c) 2013 Sajjad Taherzadeh. All rights reserved.
//

#import "QACategoryCell.h"

@implementation QACategoryCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
