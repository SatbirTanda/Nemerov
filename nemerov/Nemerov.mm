#import <Preferences/PSListController.h>

@interface NemerovListController: PSListController {
}
@end

@implementation NemerovListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Nemerov" target:self] retain];
	}
	return _specifiers;
}

- (void)linkToMyTwitter {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.twitter.com/sst1337/"]];
}

@end

// vim:ft=objc
