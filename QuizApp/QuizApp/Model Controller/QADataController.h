//
//  QADataController.h
//  QuizApp
//
//  Created by Johannes Ekberg on 2013-10-07.
//  Copyright (c) 2013 Sajjad Taherzadeh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QADataController : NSObject

@property (nonatomic, strong) NSMutableArray *categories;

+ (instancetype)sharedController;

- (void)loadData;

@end
