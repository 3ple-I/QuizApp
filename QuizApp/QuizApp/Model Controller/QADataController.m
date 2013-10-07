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
	NSArray *categoryData = [dict objectForKey:@"categories"];
	
	// Loop through the array, creating a category object for each item, instead of the
	// generic dictionary the plist gives us
	
	// The C way:
	/*for(int i = 0; i < [categoryData count]; i++) {
		
		NSDictionary *d = [categoryData objectAtIndex:i];
		
		QACategory *category = [[QACategory alloc] init];
		category.name = [d objectForKey:@"name"];
		NSLog(@"Category Name: %@", category.name);
		
	}*/
	
	// The Objective-C way:
	for(NSDictionary *d in categoryData) {
		
		QACategory *category = [[QACategory alloc] init];
		category.name = [d objectForKey:@"name"];
		NSLog(@"Category Name: %@", category.name);
		
		// Loop through the files
		NSArray *files = [d objectForKey:@"files"];
		for(NSString *filename in files) {
			
			NSLog(@"-> %@", filename);
			NSDictionary *fileDict = [[NSDictionary alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:filename ofType:nil]];
			//NSLog(@"%@", fileDict);
			
			// Loop through the questions...
			NSArray *questionsData = [fileDict objectForKey:@"questions"];
			for(NSDictionary *questionData in questionsData) {
				
				QAQuestion *question = [[QAQuestion alloc] init];
				question.question = [questionData objectForKey:@"question"];
				NSLog(@"----> %@", question.question);
				
			}
			
		}
		
	}
}

@end
