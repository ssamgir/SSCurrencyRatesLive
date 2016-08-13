//
//  ViewController.m
//  SSCurrencyRatesLive
//
//  Created by Amit Bobade on 06/08/16.
//  Copyright © 2016 Sandesh Samgir. All rights reserved.
//

#import "ViewController.h"
#import "Currency.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self currencyRates];
    
}


- (void)currencyRates {
    
    
    NSString * urlString = @"http://apilayer.net/api/live?access_key=4c4fff1af524f6cb2bd3f54f8e2147f5&source=USD&currencies=INR,EUR,GBP,CAD,PLN,&format=1";
    
    NSMutableURLRequest * req = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlString]];
    
    NSError * error = nil ;
    
    
    NSData * data = [NSURLConnection sendSynchronousRequest:req returningResponse:nil error:&error];
    
    NSLog(@"%@",data);
    if (error) {
        
        return;
    }
    NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    if (error)
    {
        return;
    }
    
    
   NSString * result = [dict valueForKey:@"success"];
    NSLog(@"%@",result);

    
    NSDictionary * quotes = [dict valueForKey:@"quotes"];
    NSLog(@"%@",quotes);
    
    NSString * Inr = [quotes valueForKey:@"USDINR"];
    
    NSLog(@"%@",Inr);

    NSString * Cad = [quotes valueForKey:@"USDCAD"];
    NSLog(@"%@",Cad);
    NSString * Eur = [quotes valueForKey:@"USDEUR"];
    NSLog(@"%@",Eur);
    NSString * Gbp = [quotes valueForKey:@"USDGBP"];
    NSLog(@"%@",Gbp);
    NSString * Pln = [quotes valueForKey:@"USDPLN"];
    NSLog(@"%@",Pln);
    

    self.INR.text = [NSString stringWithFormat:@"%@",Inr];
    
    self.CAD.text = [NSString stringWithFormat:@"%@",Cad];
    self.GBP.text = [NSString stringWithFormat:@"%@",Gbp];
    self.PLN.text = [NSString stringWithFormat:@"%@",Pln];
    self.EUR.text = [NSString stringWithFormat:@"%@",Eur];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
