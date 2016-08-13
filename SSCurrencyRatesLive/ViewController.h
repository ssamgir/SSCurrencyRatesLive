//
//  ViewController.h
//  SSCurrencyRatesLive
//
//  Created by Amit Bobade on 06/08/16.
//  Copyright © 2016 Sandesh Samgir. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UILabel *CAD;
@property (strong, nonatomic) IBOutlet UILabel *INR;


@property (strong, nonatomic) IBOutlet UILabel *EUR;

@property (strong, nonatomic) IBOutlet UILabel *GBP;
@property (strong, nonatomic) IBOutlet UILabel *PLN;

@end

