//
//  FISEventDetailsViewController.m
//  tasksToday
//
//  Created by Lukas Thoms on 6/15/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISEventDetailsViewController.h"

@interface FISEventDetailsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *eventUIText;

@end

@implementation FISEventDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableString *eventsString = [@"" mutableCopy];
    for (EKEvent *event in self.eventsArray) {
        [eventsString appendFormat:@"%@", event.title];
        if (![event isEqual:[self.eventsArray lastObject]]) {
            [eventsString appendFormat: @"\n"];
        }
    }
    self.eventUIText.text = eventsString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
