//
//  QADataController.m
//  QuizApp
//
//  Created by Johannes Ekberg on 2013-10-07.
//  Copyright (c) 2013 Sajjad Taherzadeh. All rights reserved.
//

#import "QADataController.h"
#import "QACategory.h"
#import "QAQuestion.h"

static QADataController *_sharedInstance = nil;

@implementation QADataController

+ (instancetype)sharedController
{
	if(_sharedInstance == nil)
		_sharedInstance = [[QADataController alloc] init];
	
	return _sharedInstance;
}

- (id)init
{
	if((self = [super init]))
	{
		[self loadData];
	}
	
	return self;
}

- (void)loadData
{
	// NSBundle knows everything about the Bundle the application is in, aka the glorified folder
	// an application is. Ask it for the path for Categories.plist
	NSString *path = [[NSBundle mainBundle] pathForResource:@"Categories" ofType:@"plist"];
	NSLog(@"%@", path);
	
	// Make a Dictionary out of the contents
	NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
	
	// Ask the dictionary for the thing called "categories", which we know is an Array
	// An Array is represented by the NSArray class
	NSArray *dataForAllCategories = [dict objectForKey:@"categories"];
	
	// Loop through the array, creating a category object for each item, instead of the
	// generic dictionary the plist gives us
	
	// The C way:
	/*for(int i = 0; i < [categoryData count]; i++) {
		
		NSDictionary *d = [categoryData objectAtIndex:i];
		
		QACategory *category = [[QACategory alloc] init];
		category.name = [d objectForKey:@"name"];
		NSLog(@"Category Name: %@", category.name);
		
	}*/
	
	_categories = [[NSMutableArray alloc] init];
	
	// The Objective-C way:
	for(NSDictionary *categoryDict in dataForAllCategories)
	{
		QACategory *category = [[QACategory alloc] init];
		category.name = [categoryDict objectForKey:@"name"];
		category.questions = [[NSMutableArray alloc] init];
		NSLog(@"---- %@ ----", category.name);
		for(NSString *filename in [categoryDict objectForKey:@"files"])
		{
			NSLog(@"-> %@", filename);
			[category.questions addObjectsFromArray:[self loadQuestionsFromFile:[[NSBundle mainBundle] pathForResource:filename
																												ofType:@"plist"]]];
		}
		NSLog(@"%@", category.questions);
		
		[_categories addObject:category];
	}
}

- (NSArray *)loadQuestionsFromFile:(NSString *)path
{
	NSDictionary *fileContents = [NSDictionary dictionaryWithContentsOfFile:path];
	NSArray *dataForAllQuestions = [fileContents objectForKey:@"questions"];
	
	NSMutableArray *questionsToReturn = [[NSMutableArray alloc] init];
	
	for(NSDictionary *dataForOneQuestion in dataForAllQuestions)
	{
		QAQuestion *question = [[QAQuestion alloc] init];
		question.question = [dataForOneQuestion objectForKey:@"question"];
		question.hint = [dataForOneQuestion objectForKey:@"hint"];
		question.right = [dataForOneQuestion objectForKey:@"right"];
		question.wrong = [dataForOneQuestion objectForKey:@"wrong"];
		
		/*NSLog(@"-- Question --");
		NSLog(@"Question: %@", question.question);
		NSLog(@"Hint: %@", question.hint);
		NSLog(@"Right: %@", question.right);
		NSLog(@"Wrong: %@", question.wrong);*/
		
		[questionsToReturn addObject:question];
	}
	
	return questionsToReturn;
}

@end
