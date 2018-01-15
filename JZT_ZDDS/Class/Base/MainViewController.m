//
//  MainViewController.m
//  JZT_ZDDS
//
//  Created by 赵光飞 on 2018/1/15.
//  Copyright © 2018年 jiuzhoutong. All rights reserved.
//

#import "MainViewController.h"
#import "CCNavigationController.h"
#import "CCBaseViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) CCBaseViewController *homeVC;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupViews];
}


- (void)setupViews {
    CCNavigationController *navi_VC = [[CCNavigationController alloc] initWithRootViewController:self.homeVC];
    self.viewControllers = @[navi_VC];
    self.selectedIndex = 0;
}


- (void)configTabBarItem:(UITabBarItem *)item {
    [item setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14], NSForegroundColorAttributeName: [UIColor blackColor]} forState:UIControlStateNormal];
    [item setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14], NSForegroundColorAttributeName: [UIColor orangeColor]} forState:UIControlStateSelected];
}


#pragma mark - getting

- (CCBaseViewController *)homeVC {
    if (!_homeVC) {
        _homeVC = [[CCBaseViewController alloc] init];
        _homeVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Home" image:[UIImage imageNamed:@""] tag:0];
        [self configTabBarItem:_homeVC.tabBarItem];
    }
    return _homeVC;
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
