#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioServices.h>
#import "Tweak.h"

%hook SBHIconViewContextMenuStateController
-(void) iconViewWillPresentContextMenu:(id)arg1 {
	playSound();
	%orig(arg1);
}
%end