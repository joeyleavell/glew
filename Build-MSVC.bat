rmdir \S \Q GlewBuild\MSVC
rmdir \S \Q Install\MSVC
cmake -D glew-cmake_BUILD_STATIC=ON glew-cmake_BUILD_SHARED=OFF -D ONLY_LIBS=ON -D CMAKE_INSTALL_PREFIX=".\Install\MSVC" -H. -BGlewBuild\MSVC
cmake --build .\GlewBuild\MSVC --config Release
cmake --install .\GlewBuild\MSVC --config Release

mkdir ..\Extern\Glew\Include\
mkdir ..\Extern\Glew\Libraries\x64\Windows\MSVC\
xcopy /Y /E .\Install\MSVC\Include\GL\ ..\Extern\Glew\Include\
copy /Y .\Install\MSVC\lib\glew.lib ..\Extern\Glew\Libraries\x64\Windows\MSVC\glew.lib
