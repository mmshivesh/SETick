// Code Almost verbatim from https://github.com/Litteeen/Tick/
// Licensed under MIT License.
void playSound() {

	int loudness = 0;

	SystemSoundID sound = 0;
	AudioServicesDisposeSystemSoundID(sound);

	if (loudness == 0) {
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:@"/Library/Application Support/SETick/SETick.caf"]), &sound);

	} else if (loudness == 1) {
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:@"/Library/Application Support/SETick/SETick2.caf"]), &sound);
		
	} else if (loudness == 2) {
		AudioServicesCreateSystemSoundID((CFURLRef) CFBridgingRetain([NSURL fileURLWithPath:@"/Library/Application Support/SETick/SETick3.caf"]), &sound);

	}

	AudioServicesPlaySystemSound((SystemSoundID)sound);

}