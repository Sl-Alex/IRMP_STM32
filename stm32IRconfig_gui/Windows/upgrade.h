#ifndef _UPGRADE_h_
#define _UPGRADE_h_
#include "dfu.h"
#include <fx.h>

class Upgrade : public FXThread {
private:
	const char* firmwarefile;
	char* print;
	FXGUISignal* guisignal;
public:
	Upgrade();
	Upgrade(const char* pfirmwarefile, char* pprint, FXGUISignal* pguisignal);
	void set_firmwarefile(const char* pfirmwarefile);
	void set_print(char* pprint);
	void set_signal(FXGUISignal* pguisignal);
	FXint run();
	~Upgrade();
};

#endif