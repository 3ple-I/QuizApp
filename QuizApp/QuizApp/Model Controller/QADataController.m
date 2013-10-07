//
//  QADataController.m
//  QuizApp
//
//  Created by Johannes Ekberg on 2013-10-07.
//  Copyright (c) 2013 Sajjad Taherzadeh. All rights reserved.
//

#import "QADataController.h"

static QADataController *_sharedInstance = nil;

@implementation QADataController

+ (instancetype)sharedController
{
	if(_sharedInstance == nil)
		_sharedInstance = [[QADataController alloc] init];
	
	return _sharedInstance;
}

@end
