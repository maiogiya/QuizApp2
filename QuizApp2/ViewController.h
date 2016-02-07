//
//  ViewController.h
//  QuizApp
//
//  Created by 扇谷真依 on 2016/01/20.
//  Copyright © 2016年 扇谷真依. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

-(IBAction)CorrectAnswer:(id)sender;
@property(nonatomic,weak) IBOutlet UITextView *textLabel;
@property(nonatomic,weak) IBOutlet UIButton *circle;
@property(nonatomic,weak) IBOutlet UIButton *cross;
@property(nonatomic,weak) IBOutlet UIButton *next;

@property (strong, nonatomic) NSArray *soundTable;
@property (strong, nonatomic) AVAudioPlayer *player;

-(IBAction)IncorrectAnswer:(id)sender;
-(IBAction)NextQuestion:(id)sender;

@end

