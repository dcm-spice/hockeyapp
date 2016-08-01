Pod::Spec.new do |s|
  s.name         = "hockeyapp"
  s.version      = "0.0.1"
  s.summary      = "HockeyApp SDK for client ndk"
  s.homepage     = "http://git.drecom.jp/hattori_yuri/hockeyapp"
  s.license      = ""
  s.author       = {
    "dcm-spice": "dcm.spice@gmail.com"
  }
  s.source       = {
    :git => "ssh://git@git.drecom.jp:10022/hattori_yuri/hockeyapp.git",
    :tag => s.version
  }

  preserve_paths = %w(
    hockeyapp/jni/HockeyApp.cpp
    hockeyapp/jni/HockeyApp.h
    hockeyapp/java/src/net/hockeyapp/android/NativeCrashManager.java
    hockeyapp/java/src/jp/co/drecom/spice/hockeyapp/HockeyApp.java
    hockeyapp/java/build.gradle
    hockeyapp/java/build.xml
    hockeyapp/java/AndroidManifest.xml
    hockeyapp/java/libs/*.jar
    hockeyapp/java/res/values/strings.xml
    hockeyapp/java/AndroidManifest.xml
    hockeyapp/java/project.properties
    Android.mk
  )
  s.source_files  = "dummy.c"
  s.preserve_paths = preserve_paths
  s.dependency "breakpad"

end
