FSHARP_CORE_LOCATION=/Users/piotrcirocki/Documents/unity/MyFSharpUnity/Libs/MyFSharpProject/packages/FSharp.Core/lib/net45/FSharp.Core.dll
MONO_FRAMEWORK_LOCATION=/Library/Frameworks/Mono.framework/Versions/5.18.0/lib/mono/4.5.1-api
UNITY_LOCATION=/Applications/Unity/Unity.app/Contents
CURRENT_LOCATION=/Users/piotrcirocki/Documents/unity/MyFSharpUnity/Libs/MyFSharpProject/src/MyFSharpProject
TARGET_LOCATION=/Users/piotrcirocki/Documents/unity/MyFSharpUnity/Assets/Libs
FSHARP_COMPILER_LOCATION=/Library/Frameworks/Mono.framework/Versions/Current/Commands/fsharpc
 
$FSHARP_COMPILER_LOCATION \
-o:$TARGET_LOCATION/MyFSharpLib.dll \
-g \
--optimize- \
--tailcalls- \
--debug:full \
--noframework \
--define:DEBUG \
-r:$FSHARP_CORE_LOCATION \
-r:$UNITY_LOCATION/MonoBleedingEdge/lib/mono/4.7.1-api/mscorlib.dll \
-r:$MONO_FRAMEWORK_LOCATION/System.Core.dll \
-r:$MONO_FRAMEWORK_LOCATION/System.dll \
-r:$MONO_FRAMEWORK_LOCATION/System.Numerics.dll \
-r:$UNITY_LOCATION/Managed/UnityEngine.dll \
--fullpaths \
--flaterrors \
--subsystemversion:6.00 \
--highentropyva+ \
--target:library \
$CURRENT_LOCATION/MyFSharpProject.fs
 
FILE_FSHARP_CORE_TARGET=$TARGET_LOCATION/FSharp.Core.dll
if [ ! -f "$FILE_FSHARP_CORE_TARGET" ]; then
    cp $FSHARP_CORE_LOCATION $TARGET_LOCATION
fi