rmdir \S \Q GlewBuild\MinGW
rmdir \S \Q Install\MinGW
cmake -G "MinGW Makefiles" -D glew-cmake_BUILD_STATIC=ON glew-cmake_BUILD_SHARED=OFF -D ONLY_LIBS=ON -D CMAKE_INSTALL_PREFIX=".\Install\MinGW" -H. -BGlewBuild\MinGW
cmake --build .\GlewBuild\MinGW --config Release
cmake --install .\GlewBuild\MinGW --config Release

mkdir ..\Extern\Glew\Include\
mkdir ..\Extern\Glew\Libraries\x64\Windows\MinGW\
xcopy /Y /E .\Install\MinGW\Include\GL\ ..\Extern\Glew\Include\
copy /Y .\Install\MinGW\lib\libglew.a ..\Extern\Glew\Libraries\x64\Windows\MinGW\libglew.a
