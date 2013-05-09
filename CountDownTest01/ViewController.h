//
//  ViewController.h
//  CountDownTest01
//
//  Created by 史 美光 on 13/04/20.
//  Copyright (c) 2013年 史 美光. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *displayLabel;
- (IBAction)pushAction:(id)sender;
@property(nonatomic)NSTimer *CountDownTimer;
@property(nonatomic)float CookieTime;
- (IBAction)plusSecond:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *plusSecondMessageLabel;

@end
