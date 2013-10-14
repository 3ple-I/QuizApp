//
//  QAQuestion.m
//  QuizApp
//
//  Created by Johannes Ekberg on 2013-09-30.
//  Copyright (c) 2013 Sajjad Taherzadeh. All rights reserved.
//

#import "QAQuestion.h"

@implementation QAQuestion

- (NSString *)description
{
	return [NSString stringWithFormat:@"<Question: %@>", self.question];
}

@end
