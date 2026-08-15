# Android export instructions for Ghenolife prototype

Prerequisites:
- Godot 3.x or 4.x (this project is compatible with Godot 3.x format). Install Godot Editor.
- Android SDK & NDK installed (set ANDROID_HOME/ANDROID_SDK_ROOT as needed).
- Java JDK 11+.
- Godot Android export templates installed in the Editor (Editor > Manage Export Templates).

Steps to build APK (short):
1. Open the project in Godot (open godot/project.godot).
2. In Project > Export, add Android preset.
3. Configure keystore (debug keystore ok for testing) and package name (ex: com.yourname.ghenolife).
4. Export the APK.

Notes on integrating a local LLM on Android:
- Android cannot run Python server easily; recommended approaches:
  - Bundle a native inference binary (llama.cpp compiled for Android) and call it via Godot's Android plugin (Java/Kotlin) or GDNative.
  - Use a lightweight quantized model (4-bit/8-bit) targeted for mobile (3B–7B) and llama.cpp / ggml compiled for Android.
  - Store model files in external storage or app's files; watch APK size limits — consider downloading model post-install.

For prototyping, the project uses a GDScript LLM mock (godot/scripts/llm_mock.gd). Replace with actual integration later.
