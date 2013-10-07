//
//  QACategory.h
//  QuizApp
//
//  Created by Johannes Ekberg on 2013-09-30.
//  Copyright (c) 2013 Sajjad Taherzadeh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QACategory : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSMutableArray *questions;

@end
