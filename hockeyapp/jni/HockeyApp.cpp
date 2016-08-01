#include "HockeyApp.h" 
#include <stdio.h>
#include "client/linux/handler/exception_handler.h"
#include "client/linux/handler/minidump_descriptor.h"

static google_breakpad::ExceptionHandler* exceptionHandler;
bool DumpCallback(const google_breakpad::MinidumpDescriptor& descriptor, void* context, bool succeeded)
{
    printf("Dump path: %s\n", descriptor.path());
    return succeeded;
}

JNIEXPORT void JNICALL Java_jp_co_drecom_spice_hockeyapp_HockeyApp_setUpBreakpad(JNIEnv *env, jclass cls, jstring file_path)
{
    const char *path = env->GetStringUTFChars(file_path, 0);
    google_breakpad::MinidumpDescriptor descriptor(path);
    exceptionHandler = new google_breakpad::ExceptionHandler(descriptor, NULL, DumpCallback, NULL, true, -1);
    env->ReleaseStringUTFChars(file_path, path);
}
