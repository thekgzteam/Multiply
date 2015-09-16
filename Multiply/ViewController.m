//
//  ViewController.m
//  Multiply
//
//  Created by Edil Ashimov on 7/19/15.
//  Copyright (c) 2015 Edil Ashimov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *multiplierLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;
@property (weak, nonatomic) IBOutlet UIButton *calculateButton;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property BOOL *keyboardMustDissappear;
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.slider.value = 0;
    self.multiplierLabel.text = 0;
}
- (IBAction)onCalculateButtonPressed:(id)sender {

    int numberTextfieldNumber = [self.numberTextField.text intValue];
    int multiplierLabelNumber = [self.multiplierLabel.text intValue];

    if (self.segmentControl.selectedSegmentIndex == 0) {
        int result = numberTextfieldNumber * multiplierLabelNumber;
        [self.answerLabel  setText: [NSString stringWithFormat:@" %d" , result]];

    } else if (self.segmentControl.selectedSegmentIndex == 1) {
        int result = numberTextfieldNumber / multiplierLabelNumber;
        [self.answerLabel  setText: [NSString stringWithFormat:@" %d" , result]];

        [self.calculateButton resignFirstResponder];

    }

    int numberTextField = [self.numberTextField.text intValue];
    int multiplierLabel = [self.multiplierLabel.text intValue];
    int result = numberTextField * multiplierLabel;


    //    change color, and using if statement
    if (result > 20) {
        self.view.backgroundColor = [UIColor greenColor];
    }
    else if (result == 20) {
        self.view.backgroundColor = [UIColor greenColor];
    }
    else if (result <20){
        self.view.backgroundColor = [UIColor whiteColor];
    }

    //    executing fiz buzz statements
    if (result % 3 == 0){
        self.answerLabel.text = @"fizz";}
    if (result % 5 == 0){
        self.answerLabel.text = @"buzz";}
    if (result % 3 == 0 && result % 5 == 0) {
        self.answerLabel.text = @"fizzBuzz";}
}
//Setting slider
- (IBAction)sliderValueChange:(id)sender {
    self.multiplierLabel.text = [NSString stringWithFormat:@"%i", (int) self.slider.value];
    self.slider.minimumValue = 0;
    self.slider.maximumValue = 9;
}

@end
