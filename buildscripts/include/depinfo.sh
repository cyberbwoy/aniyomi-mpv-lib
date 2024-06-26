#!/bin/bash -e

## Dependency versions
# Make sure to keep v_ndk and v_ndk_n in sync, the numeric version can be found in source.properties
# also remember to update path.sh

v_sdk=10406996_latest
v_ndk=r26b
v_ndk_n=26.1.10909125
v_sdk_platform=34
v_sdk_build_tools=33.0.2

v_lua=5.2.4
v_unibreak=5.1
v_harfbuzz=8.3.0
v_fribidi=1.0.13
v_freetype=2-13-2
v_mbedtls=3.5.1
v_libxml2=2.11.5
v_ffmpeg=n6.1.1
v_mpv=c6ccabe5854254320b175cde4106ec40d7a30946


## Dependency tree
# I would've used a dict but putting arrays in a dict is not a thing

dep_mbedtls=()
dep_libxml2=()
dep_dav1d=()
dep_ffmpeg=(mbedtls dav1d libxml2)
dep_freetype2=()
dep_fribidi=()
dep_harfbuzz=()
dep_unibreak=()
dep_libass=(freetype2 fribidi harfbuzz unibreak)
dep_lua=()
dep_libplacebo=()
dep_mpv=(ffmpeg libass lua libplacebo)
dep_mpv_android=(mpv)


## Travis-related

# pinned ffmpeg commit used by CI
v_travis_ffmpeg=n6.1

# filename used to uniquely identify a build prefix
travis_tarball="prefix-ndk-${v_ndk}-lua-${v_lua}-unibreak-${v_unibreak}-harfbuzz-${v_harfbuzz}-fribidi-${v_fribidi}-freetype-${v_freetype}-mbedtls-${v_mbedtls}-ffmpeg-${v_travis_ffmpeg}.tgz"
