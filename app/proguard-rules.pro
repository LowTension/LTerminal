# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in C:/tools/adt-bundle-windows-x86_64-20131030/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
-keepattributes SourceFile, LineNumberTable

-dontwarn androidx.**

-keep class androidx.annotation.Keep

-keep @androidx.annotation.Keep class * {*;}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <methods>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <fields>;
}

-keepclasseswithmembers class * {
    @androidx.annotation.Keep <init>(...);
}

-keep class com.android.terminal.TerminalCallbacks { *; }
-keep class com.android.terminal.Terminal { native <methods>; }
-keep class com.android.terminal.** { *; }
-dontwarn com.android.terminal.**

-dontwarn androidx.arch.**
-dontwarn androidx.lifecycle.**
-keep class androidx.arch.** { *; }
-keep class androidx.lifecycle.** { *; }

-renamesourcefileattribute SourceFile
-repackageclasses

-ignorewarnings
-dontwarn
-dontnote
