//
//  ViewController.m
//  TaxCalculatorApp
//
//  Created by alex fallah on 5/6/15.
//  Copyright (c) 2015 alex fallah. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UITextField *priceTextField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;



@property double caTax;
@property double chiTax;
@property double nyTax;



@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;
    

}
- (IBAction)onCalculateButtonTapped:(id)sender {

    NSString *enteredText = self.priceTextField.text;
    //storing a variable as NSString so we can convert to int

    double enteredValue = enteredText.doubleValue;
    //integer conversion
    
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double result = self.caTax * enteredValue;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1){
       double result = self.chiTax * enteredValue;
       self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];

    }else{
        double result = self.nyTax * enteredValue;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];

    }


}

@end
