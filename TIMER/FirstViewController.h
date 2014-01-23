//
//  FirstViewController.h
//  TIMER
//
//  Created by 山田　将平 on 13/12/26.
//  Copyright (c) 2013年 university of kitakyusyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController{
    NSTimer *now_timer;
}
@property (weak, nonatomic) IBOutlet UILabel *label_date;
@property (weak, nonatomic) IBOutlet UILabel *label_time;

@end
