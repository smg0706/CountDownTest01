//
//  ViewController.m
//  CountDownTest01
//
//  Created by 史 美光 on 13/04/20.
//  Copyright (c) 2013年 史 美光. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	_CookieTime = [_displayLabel.text floatValue];
    _plusSecondMessageLabel.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushAction:(id)sender {
    self.CountDownTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(CountDown) userInfo:nil repeats:YES];
}

-(void)CountDown{
    //float CookieTime = [_displayLabel.text floatValue];
    float displayTime = _CookieTime -0.1;
    if (displayTime <= 0) {
        [_CountDownTimer invalidate];
        _displayLabel.text = @"Time Over";
        _displayLabel.alpha = 1;
        _displayLabel.font = [UIFont systemFontOfSize:30];
        NSLog(@"time over");
    }
    else{if (displayTime == (int)displayTime) {
        _displayLabel.alpha = 1;
    }
    else{
        _displayLabel.alpha = displayTime -(int)displayTime;
    }
    _displayLabel.text = [NSString stringWithFormat:@"%d",(int)displayTime];
    _CookieTime = displayTime;
    }

}
- (IBAction)plusSecond:(id)sender {
    _CookieTime = _CookieTime + 10;
    _plusSecondMessageLabel.hidden = FALSE;
}
@end
