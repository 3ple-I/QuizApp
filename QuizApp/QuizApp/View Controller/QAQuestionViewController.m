//
//  QAQuestionViewController.m
//  QuizApp
//
//  Created by Johannes Ekberg on 2013-09-30.
//  Copyright (c) 2013 Sajjad Taherzadeh. All rights reserved.
//

#import "QAQuestionViewController.h"

@interface QAQuestionViewController ()

@end

@implementation QAQuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
	self.navigationItem.title = self.category.name;
	
	int index = arc4random_uniform([self.category.questions count]);
	self.question = [[[self category] questions] objectAtIndex:index]; //[self.category.questions objectAtIndex:index];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionAnswer:(id)sender {
	
}

- (IBAction)actionHint:(id)sender {
}

- (IBAction)actionQuit:(id)sender {
}

@end
