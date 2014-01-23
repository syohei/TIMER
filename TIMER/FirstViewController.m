//
//  FirstViewController.m
//  TIMER
//
//  Created by 山田　将平 on 13/12/26.
//  Copyright (c) 2013年 university of kitakyusyu. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    now_timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                                 target:self
                                               selector:@selector(nowTimer:)
                                               userInfo:nil
                                                repeats:YES ];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)nowTimer:(NSTimer*)timer{
    
    NSDate *now_date = [NSDate date];
    NSCalendar *now_calendar = [NSCalendar currentCalendar];
    NSDateComponents *nowdateComp = [ now_calendar components:
        NSYearCalendarUnit   |
        NSMonthCalendarUnit  |
        NSWeekCalendarUnit   |
        NSDayCalendarUnit    |
        NSHourCalendarUnit   |
        NSMinuteCalendarUnit |
        NSSecondCalendarUnit
                        fromDate:now_date];
    NSLog(@"%d",nowdateComp.year);
    


    
    self.label_time.text = [NSString stringWithFormat:@"%02d:%02d:%02d",
                              nowdateComp.hour,
                              nowdateComp.minute,
                              nowdateComp.second ];

    
    NSDateFormatter *weekdayformatter = [[NSDateFormatter alloc] init];
    [weekdayformatter setLocale:[NSLocale currentLocale]];
    NSArray *weekdaySymbols = [weekdayformatter shortWeekdaySymbols];
     
   
    self.label_date.text = [NSString stringWithFormat:@"%d/%02d/%02d (%@)",
                      nowdateComp.year,
                      nowdateComp.month,
                      nowdateComp.day,
                      [weekdaySymbols objectAtIndex:nowdateComp.weekday -1 ]];
    
    
}

@end
