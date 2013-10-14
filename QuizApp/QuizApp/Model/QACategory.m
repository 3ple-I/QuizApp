//
//  QACategory.m
//  QuizApp
//
//  Created by Johannes Ekberg on 2013-09-30.
//  Copyright (c) 2013 Sajjad Taherzadeh. All rights reserved.
//

#import "QACategory.h"

@implementation QACategory

- (NSString *)description
{
	return [NSString stringWithFormat:@"<Category: %@>", self.name];
}

@end
