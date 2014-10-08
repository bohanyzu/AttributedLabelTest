

#import "ViewController.h"
#import "AttributedLabel.h"

@interface ViewController () {
    AttributedLabel *attrLabel;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    attrLabel = [[AttributedLabel alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    attrLabel.backgroundColor = [UIColor clearColor];
    NSString *duesStr = @"150.00 元";
    [attrLabel setText:duesStr];
    [attrLabel setFont:[UIFont boldSystemFontOfSize:17] fromIndex:0 length:duesStr.length];
    [attrLabel setColor:[UIColor redColor] fromIndex:0 length:6];
    [attrLabel setColor:[UIColor blueColor] fromIndex:7 length:2];
//    [attrLabel setColor:[UIColor redColor] fromIndex:0 length:duesStr.length-2];
//    [attrLabel setColor:[UIColor blueColor] fromIndex:duesStr.length-2 length:2];
    [self.view addSubview:attrLabel];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self changeText];
    //[attrLabel drawRect:CGRectZero];
}

- (void)changeText
{
//    if the text going to change contains some chinese characters it will not work.
    [attrLabel setText:@"222.00 元"];
    
//    otherwise all English characters works well
    
//    [attrLabel setText:@"hello world."];
    
    [attrLabel setFont:[UIFont boldSystemFontOfSize:17] fromIndex:0 length:attrLabel.text.length];
    [attrLabel setColor:[UIColor blueColor] fromIndex:0 length:10];
    [attrLabel setColor:[UIColor redColor] fromIndex:0 length:6];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
