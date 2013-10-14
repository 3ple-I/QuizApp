//
//  QACategoryCell.h
//  QuizApp
//
//  Created by Johannes Ekberg on 2013-10-14.
//  Copyright (c) 2013 Sajjad Taherzadeh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QACategoryCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UIImageView *categoryImageView;
@property (nonatomic, strong) IBOutlet UILabel *categoryNameLabel;

@end
