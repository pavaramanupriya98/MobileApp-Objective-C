//
//  ViewController.m
//  MyFirstProject
//
//  Created by Admin on 9/11/21.
//

#import "ViewController.h"

@interface ViewController ()

@property ( nonatomic, strong ) NSString *username;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property ( nonatomic, strong ) NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *notificationLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.username = @"Pavara";
    self.password = @"securepw";
    
    self.passwordTextField.secureTextEntry=YES;
    
}
- (IBAction)loggingWasPressed:(id)sender {
    BOOL isUsersEqual =[self.username isEqualToString:[self.usernameTextField text]];
    BOOL isPasswordsEqual = [self.password isEqualToString:[self.passwordTextField text]];
    if(isUsersEqual && isPasswordsEqual){
        NSLog(@"SUCCESS");
        [self.notificationLabel setText: @"Congratulations you have logged in!"];
        //NSNotification(@"Congratulations you have logged in!");
    }
    else{
        NSLog(@"Failed");
        [self.notificationLabel setText:@"Username of Password was incorrect"];
        
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}



@end
