//
//  QAQuestionViewController.h
//  QuizApp
//
//  Created by Johannes Ekberg on 2013-09-30.
//  Copyright (c) 2013 Sajjad Taherzadeh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QACategory.h"
#import "QAQuestion.h"

@interface QAQuestionViewController : UIViewController

@property (nonatomic, strong) QACategory *category;
@property (nonatomic, strong) QAQuestion *question;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UIButton *answer1Button;
@property (weak, nonatomic) IBOutlet UIButton *answer2Button;
@property (weak, nonatomic) IBOutlet UIButton *answer3Button;
@property (weak, nonatomic) IBOutlet UIButton *answer4Button;
@property (weak, nonatomic) IBOutlet UILabel *hintLabel;
@property (weak, nonatomic) IBOutlet UIButton *hintButton;

- (IBAction)actionAnswer:(id)sender;
- (IBAction)actionHint:(id)sender;
- (IBAction)actionQuit:(id)sender;

@end
