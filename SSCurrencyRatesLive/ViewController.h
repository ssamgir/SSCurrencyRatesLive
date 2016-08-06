//
//  ViewController.h
//  SSCurrencyRatesLive
//
//  Created by Amit Bobade on 06/08/16.
//  Copyright © 2016 Sandesh Samgir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UILabel *labelTextInr;
@property (strong, nonatomic) IBOutlet UILabel *labelTextCad;
@property (strong, nonatomic) IBOutlet UILabel *labelTextEur;

@property (strong, nonatomic) IBOutlet UILabel *labelTextGbp;

@property (strong, nonatomic) IBOutlet UILabel *labelTextPln;

@end

