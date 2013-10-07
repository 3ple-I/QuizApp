//
//  QAQuestion.h
//  QuizApp
//
//  Created by Johannes Ekberg on 2013-09-30.
//  Copyright (c) 2013 Sajjad Taherzadeh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QAQuestion : NSObject

@property (nonatomic, strong) NSString *question;
@property (nonatomic, strong) NSString *hint;
@property (nonatomic, strong) NSString *right;
@property (nonatomic, strong) NSArray *wrong;

@end
