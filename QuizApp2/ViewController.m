//
//  ViewController.m
//  QuizApp
//
//  Created by 扇谷真依 on 2016/01/20.
//  Copyright © 2016年 扇谷真依. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int correct = 0;
int question = 0;
SystemSoundID sound_1;

-(IBAction)CorrectAnswer:(id)sender{
    if(question == 0){
        self.textLabel.text = @"Right!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        [self playSound:@"correct2"];
        correct = 1;
    }else if (question == 1){
        self.textLabel.text = @"Right!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        [self playSound:@"correct2"];
        correct ++;
    }else if (question == 2){
        self.textLabel.text = @"No! Wrong!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        [self playSound:@"incorrect1"];
    }else if (question == 3){
        self.textLabel.text = @"Right!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        [self playSound:@"correct2"];
        correct ++;
    }else if (question == 4){
        self.textLabel.text = @"No! Wrong!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        [self playSound:@"incorrect1"];
    };
}

-(IBAction)IncorrectAnswer:(id)sender{
    if(question == 0){
        self.textLabel.text = @"No! Wrong!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        [self playSound:@"incorrect1"];
    }else if (question == 1){
        self.textLabel.text = @"No! Wrong!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        [self playSound:@"incorrect1"];
    }else if (question == 2){
        self.textLabel.text = @"Right!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        [self playSound:@"correct2"];
        correct ++;
    }else if (question == 3){
        self.textLabel.text = @"No! Wrong!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        [self playSound:@"incorrect1"];
    }else if (question == 4){
        self.textLabel.text = @"Right!";
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = NO;
        [self playSound:@"correct2"];
        correct ++;
    };
}

-(IBAction)NextQuestion:(id)sender{
    if(question == 0){
        self.textLabel.text = @"Takeshita street have to Harajuku.";
        self.circle.hidden = NO;
        self.cross.hidden = NO;
        self.next.hidden = YES;
        question ++;
    }else if (question == 1){
        self.textLabel.text = @"Tokyo Tower is the best new.";
        self.circle.hidden = NO;
        self.cross.hidden = NO;
        self.next.hidden = YES;
        question ++;
    }else if (question == 2){
        self.textLabel.text = @"There is Odaiba in Ferris wheel.";
        self.circle.hidden = NO;
        self.cross.hidden = NO;
        self.next.hidden = YES;
        question ++;
    }else if (question == 3){
        self.textLabel.text = @"Disneyland is in Setagaya.";
        self.circle.hidden = NO;
        self.cross.hidden = NO;
        self.next.hidden = YES;
        question ++;
    }else if (question == 4){
        //NSLog(@"%d", correct / 5 * 100);
        float floatNum = correct;
        int result = floor(floatNum / 5 * 100);
        self.textLabel.text = [NSString stringWithFormat:@"Finish!\n%d％",result];
        self.circle.hidden = YES;
        self.cross.hidden = YES;
        self.next.hidden = YES;
    };
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.next.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)playSound:(NSString*)soundFileName
{
    //音楽ファイル名を作成
    //NSString *soundFileName = [NSString stringWithFormat:@"piano_%@",scaleName];
    //音楽ファイルのファイルパス(音楽ファイルがデータ上どこにあるか)を作成
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:soundFileName ofType:@"mp3"];
    NSURL *url = [NSURL fileURLWithPath:path];
    //エラーを受け取る変数の準備
    NSError *error = nil;
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    if (error != nil) { //エラーがあった場合
        return;
    }
    [self.player play];
}



@end
