[33mcommit 0937b4a2c545d2941931418ac5cec70da64ef704[m[33m ([m[1;36mHEAD[m[33m -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: Juan Pablo <fdiaz.juanpablo@gmail.com>
Date:   Mon Aug 11 02:40:30 2025 -0300

    Snake moves!

 bin/snake                 | Bin [31m32336[m -> [32m38344[m bytes
 build/game/Board.o        | Bin [31m8448[m -> [32m8688[m bytes
 build/game/Snake.o        | Bin [31m2176[m -> [32m12592[m bytes
 build/game/autoScroller.o | Bin [31m22896[m -> [32m23208[m bytes
 src/game/Board.cpp        |  22 [32m++++++[m[31m---------[m
 src/game/Board.hpp        |   1 [32m+[m
 src/game/Snake.cpp        |  66 [32m+++++++++++++++++++++++++++++++++++++++++[m[31m--[m
 src/game/Snake.hpp        |   5 [32m++[m[31m--[m
 src/game/autoScroller.cpp |  56 [32m++++++++++++++++++[m[31m------------------[m
 9 files changed, 104 insertions(+), 46 deletions(-)

[33mcommit 4134ccb7f24747b6c24af5dbddb6b7900e050709[m
Author: Juan Pablo <fdiaz.juanpablo@gmail.com>
Date:   Mon Aug 11 00:10:31 2025 -0300

    Not moving snake

 bin/snake                 | Bin [31m32240[m -> [32m32336[m bytes
 build/game/Board.d        |   4 [32m+++[m[31m-[m
 build/game/Board.o        | Bin [31m8152[m -> [32m8448[m bytes
 build/game/Snake.o        | Bin [31m1608[m -> [32m2176[m bytes
 build/game/autoScroller.d |   6 [32m+++[m[31m---[m
 build/game/autoScroller.o | Bin [31m22896[m -> [32m22896[m bytes
 src/game/Board.cpp        |  11 [32m+++++++++++[m
 src/game/Board.hpp        |   3 [32m+++[m
 src/game/Snake.cpp        |  20 [32m++++++++++++[m[31m--------[m
 src/game/Snake.hpp        |   2 [32m+[m[31m-[m
 src/game/autoScroller.cpp |  13 [32m+++++++[m[31m------[m
 11 files changed, 40 insertions(+), 19 deletions(-)

[33mcommit 0b624527e91ba0f61f0e01f87343cfc1e23a9338[m
Author: Juan Pablo <fdiaz.juanpablo@gmail.com>
Date:   Sun Aug 10 00:26:50 2025 -0300

    Added gui

 Makefile                  |  29 [32m+++++++++[m[31m----[m
 bin/snake                 | Bin [31m19744[m -> [32m32240[m bytes
 build/game/Board.d        |   2 [32m+[m
 build/game/Board.o        | Bin [31m0[m -> [32m8152[m bytes
 build/game/Snake.d        |   2 [32m+[m
 build/game/Snake.o        | Bin [31m0[m -> [32m1608[m bytes
 build/game/autoScroller.d |   5 [32m+++[m
 build/game/autoScroller.o | Bin [31m0[m -> [32m22896[m bytes
 build/gui/GUI.o           | Bin [31m11768[m -> [32m11768[m bytes
 build/main.d              |   5 [32m+[m[31m--[m
 build/main.o              | Bin [31m2864[m -> [32m1232[m bytes
 src/game/Board.cpp        |  58 [32m++++++++++++++++++++++++++[m
 src/game/Board.hpp        |  22 [32m++++++++++[m
 src/game/GameBoard.cpp    |   1 [31m-[m
 src/game/GameBoard.hpp    |  13 [31m------[m
 src/game/GameLogic.cpp    |  17 [31m--------[m
 src/game/GameLogic.hpp    |  12 [31m------[m
 src/game/Snake.cpp        |  23 [32m+++++++++++[m
 src/game/Snake.hpp        |  24 [32m+++++++++++[m
 src/game/SnakeBody.cpp    |  17 [31m--------[m
 src/game/SnakeBody.hpp    |  33 [31m---------------[m
 src/game/autoScroller.cpp |  95 [32m+++++++++++++++++++++++++++++++++++++++++++[m
 src/game/autoScroller.hpp |   1 [32m+[m
 src/main.cpp              |   9 [32m+[m[31m---[m
 24 files changed, 256 insertions(+), 112 deletions(-)

[33mcommit 6f009ca88db4c997880ef6fa6b917da17f2c179d[m
Author: Juan Pablo <fdiaz.juanpablo@gmail.com>
Date:   Sat Aug 9 19:05:55 2025 -0300

    Added game and board logic

 src/game/GameBoard.cpp |  1 [32m+[m
 src/game/GameBoard.hpp | 13 [32m+++++++++++++[m
 src/game/GameLogic.cpp |  8 [32m+++++++[m[31m-[m
 src/game/GameLogic.hpp |  8 [32m++++[m[31m----[m
 src/main.cpp           |  2 [32m+[m[31m-[m
 5 files changed, 26 insertions(+), 6 deletions(-)

[33mcommit ea785aadda782707e50ac3c15ab3b92b667f8bbf[m
Author: Juan Pablo <fdiaz.juanpablo@gmail.com>
Date:   Thu Aug 7 22:25:00 2025 -0300

    Added SMFL libl

 Makefile               |  35 [32m+++++++++++++++++++++++[m[31m------------[m
 bin/app                | Bin [31m20544[m -> [32m0[m bytes
 bin/snake              | Bin [31m0[m -> [32m19744[m bytes
 bin/test_app           | Bin [31m2603408[m -> [32m0[m bytes
 build/game/GameLogic.o | Bin [31m0[m -> [32m1424[m bytes
 build/game/SnakeBody.o | Bin [31m0[m -> [32m1624[m bytes
 build/gui/GUI.d        |   2 [32m++[m
 build/gui/GUI.o        | Bin [31m0[m -> [32m11768[m bytes
 build/main.d           |   3 [32m+++[m
 build/main.o           | Bin [31m0[m -> [32m2864[m bytes
 src/gui/GUI.cpp        |  14 [32m++++++++++++++[m
 src/main.cpp           |   1 [32m+[m
 12 files changed, 43 insertions(+), 12 deletions(-)

[33mcommit 68c6741175873e117e7e74cc3583495d4e4b40d4[m
Author: Juan Pablo <fdiaz.juanpablo@gmail.com>
Date:   Thu Aug 7 21:54:58 2025 -0300

    Reorganizing

 src/GUI.cpp                  | 11 [31m-----------[m
 src/GUI.hpp                  | 13 [31m-------------[m
 src/game/GameLogic.cpp       | 11 [32m+++++++++++[m
 src/game/GameLogic.hpp       | 12 [32m++++++++++++[m
 src/{ => game}/SnakeBody.cpp |  2 [32m+[m[31m-[m
 src/{ => game}/SnakeBody.hpp |  0
 src/gui/GUI.cpp              | 13 [32m+++++++++++++[m
 src/gui/GUI.hpp              | 12 [32m++++++++++++[m
 src/main.cpp                 |  6 [32m++++[m[31m--[m
 tests/SnakeBodyTest.cpp      | 30 [32m++++++++++++++++++++++++++[m[31m----[m
 10 files changed, 79 insertions(+), 31 deletions(-)

[33mcommit bf11b44775e74d9d85fb797c0e928b3c9ea5ebde[m
Author: Juan Pablo Diaz <juandiaz@emeal.nttdata.com>
Date:   Thu Aug 7 21:29:44 2025 -0300

    Test

 .gitignore        |   3 [32m+[m[31m--[m
 bin/app           | Bin [31m0[m -> [32m20544[m bytes
 bin/test_app      | Bin [31m0[m -> [32m2603408[m bytes
 src/GUI.cpp       |  11 [32m+++++++++++[m
 src/GUI.hpp       |  13 [32m+++++++++++++[m
 src/SnakeBody.cpp |  17 [32m+++++++++++++++++[m
 src/SnakeBody.hpp |  33 [32m+++++++++++++++++++++++++++++++++[m
 src/main.cpp      |  10 [32m++++++++++[m
 8 files changed, 85 insertions(+), 2 deletions(-)

[33mcommit bbb9a9a2f486ffb0fa3b8c456d1f041e2da3da70[m
Author: Juan Pablo Diaz <juandiaz@emeal.nttdata.com>
Date:   Thu Aug 7 01:52:01 2025 -0300

    Reorganizing

 .gitignore            |   4 [32m+++[m[31m-[m
 GUI.cpp               |  45 [31m---------------------------------------------[m
 SnakeBody.cpp         |  17 [31m-----------------[m
 app                   | Bin [31m20544[m -> [32m0[m bytes
 headers/GUI.hpp       |  14 [31m--------------[m
 headers/SnakeBody.hpp |  33 [31m---------------------------------[m
 main.cpp              |  10 [31m----------[m
 test_app              | Bin [31m2603408[m -> [32m0[m bytes
 8 files changed, 3 insertions(+), 120 deletions(-)

[33mcommit ca31f5adade25e6c31d1a84f41b0a57c23a8e58c[m
Author: Juan Pablo Diaz <juandiaz@emeal.nttdata.com>
Date:   Thu Aug 7 01:11:13 2025 -0300

    deleted info

 .gitignore | 3 [32m++[m[31m-[m
 info.txt   | 3 [31m---[m
 2 files changed, 2 insertions(+), 4 deletions(-)

[33mcommit e110e88940b1cd4aed5e22190b77c2c6c29f0901[m
Author: Juan Pablo Diaz <juandiaz@emeal.nttdata.com>
Date:   Thu Aug 7 01:05:11 2025 -0300

    Installed g++

 info.txt                                          |      3 [32m+[m
 mingw64/bin/addr2line.exe                         |    Bin [31m1270272[m -> [32m0[m bytes
 mingw64/bin/ar.exe                                |    Bin [31m1297408[m -> [32m0[m bytes
 mingw64/bin/as.exe                                |    Bin [31m1946624[m -> [32m0[m bytes
 mingw64/bin/c++.exe                               |    Bin [31m3022848[m -> [32m0[m bytes
 mingw64/bin/c++filt.exe                           |    Bin [31m1267712[m -> [32m0[m bytes
 mingw64/bin/cc.exe                                |    Bin [31m3019264[m -> [32m0[m bytes
 mingw64/bin/cpp.exe                               |    Bin [31m3020288[m -> [32m0[m bytes
 mingw64/bin/dlltool.exe                           |    Bin [31m1329152[m -> [32m0[m bytes
 mingw64/bin/dllwrap.exe                           |    Bin [31m76800[m -> [32m0[m bytes
 mingw64/bin/elfedit.exe                           |    Bin [31m64000[m -> [32m0[m bytes
 mingw64/bin/g++.exe                               |    Bin [31m3022848[m -> [32m0[m bytes
 mingw64/bin/gcc-ar.exe                            |    Bin [31m67584[m -> [32m0[m bytes
 mingw64/bin/gcc-nm.exe                            |    Bin [31m67584[m -> [32m0[m bytes
 mingw64/bin/gcc-ranlib.exe                        |    Bin [31m67584[m -> [32m0[m bytes
 mingw64/bin/gcc.exe                               |    Bin [31m3019264[m -> [32m0[m bytes
 mingw64/bin/gcov-dump.exe                         |    Bin [31m2081280[m -> [32m0[m bytes
 mingw64/bin/gcov-tool.exe                         |    Bin [31m2143232[m -> [32m0[m bytes
 mingw64/bin/gcov.exe                              |    Bin [31m2352128[m -> [32m0[m bytes
 mingw64/bin/gdb-add-index                         |    185 [31m-[m
 mingw64/bin/gdb.exe                               |    Bin [31m59711[m -> [32m0[m bytes
 mingw64/bin/gdborig.exe                           |    Bin [31m11485184[m -> [32m0[m bytes
 mingw64/bin/gdbserver.exe                         |    Bin [31m448000[m -> [32m0[m bytes
 mingw64/bin/gendef.exe                            |    Bin [31m62976[m -> [32m0[m bytes
 mingw64/bin/genidl.exe                            |    Bin [31m73728[m -> [32m0[m bytes
 mingw64/bin/genpeimg.exe                          |    Bin [31m32768[m -> [32m0[m bytes
 mingw64/bin/gfortran.exe                          |    Bin [31m3022336[m -> [32m0[m bytes
 mingw64/bin/gprof.exe                             |    Bin [31m1338368[m -> [32m0[m bytes
 mingw64/bin/gstack                                |    147 [31m-[m
 mingw64/bin/ld.bfd.exe                            |    Bin [31m1910784[m -> [32m0[m bytes
 mingw64/bin/ld.exe                                |    Bin [31m1910784[m -> [32m0[m bytes
 mingw64/bin/libatomic-1.dll                       |    Bin [31m31744[m -> [32m0[m bytes
 mingw64/bin/libgcc_s_seh-1.dll                    |    Bin [31m142848[m -> [32m0[m bytes
 mingw64/bin/libgfortran-5.dll                     |    Bin [31m3548160[m -> [32m0[m bytes
 mingw64/bin/libgomp-1.dll                         |    Bin [31m294400[m -> [32m0[m bytes
 mingw64/bin/libquadmath-0.dll                     |    Bin [31m380928[m -> [32m0[m bytes
 mingw64/bin/libstdc++-6.dll                       |    Bin [31m2319360[m -> [32m0[m bytes
 mingw64/bin/libwinpthread-1.dll                   |    Bin [31m55808[m -> [32m0[m bytes
 mingw64/bin/lto-dump.exe                          |    Bin [31m40094720[m -> [32m0[m bytes
 mingw64/bin/mingw32-make.exe                      |    Bin [31m278016[m -> [32m0[m bytes
 mingw64/bin/nm.exe                                |    Bin [31m1286656[m -> [32m0[m bytes
 mingw64/bin/objcopy.exe                           |    Bin [31m1409024[m -> [32m0[m bytes
 mingw64/bin/objdump.exe                           |    Bin [31m2608128[m -> [32m0[m bytes
 mingw64/bin/ranlib.exe                            |    Bin [31m1297408[m -> [32m0[m bytes
 mingw64/bin/readelf.exe                           |    Bin [31m1058816[m -> [32m0[m bytes
 mingw64/bin/size.exe                              |    Bin [31m1270784[m -> [32m0[m bytes
 mingw64/bin/strings.exe                           |    Bin [31m1275904[m -> [32m0[m bytes
 mingw64/bin/strip.exe                             |    Bin [31m1409024[m -> [32m0[m bytes
 mingw64/bin/widl.exe                              |    Bin [31m562176[m -> [32m0[m bytes
 mingw64/bin/windmc.exe                            |    Bin [31m1293312[m -> [32m0[m bytes
 mingw64/bin/windres.exe                           |    Bin [31m1384960[m -> [32m0[m bytes
 mingw64/bin/x86_64-w64-mingw32-c++.exe            |    Bin [31m3022848[m -> [32m0[m bytes
 mingw64/bin/x86_64-w64-mingw32-g++.exe            |    Bin [31m3022848[m -> [32m0[m bytes
 mingw64/bin/x86_64-w64-mingw32-gcc-15.1.0.exe     |    Bin [31m3019264[m -> [32m0[m bytes
 mingw64/bin/x86_64-w64-mingw32-gcc-ar.exe         |    Bin [31m67584[m -> [32m0[m bytes
 mingw64/bin/x86_64-w64-mingw32-gcc-nm.exe         |    Bin [31m67584[m -> [32m0[m bytes
 mingw64/bin/x86_64-w64-mingw32-gcc-ranlib.exe     |    Bin [31m67584[m -> [32m0[m bytes
 mingw64/bin/x86_64-w64-mingw32-gcc.exe            |    Bin [31m3019264[m -> [32m0[m bytes
 mingw64/bin/x86_64-w64-mingw32-gfortran.exe       |    Bin [31m3022336[m -> [32m0[m bytes
 mingw64/build-info.txt                            |    323 [31m-[m
 mingw64/etc/gdbinit                               |      6 [31m-[m
 mingw64/include/ansidecl.h                        |    354 [31m-[m
 mingw64/include/bfd.h                             |   8044 [31m-[m
 mingw64/include/bfdlink.h                         |   1106 [31m-[m
 mingw64/include/ctf-api.h                         |   1026 [31m-[m
 mingw64/include/ctf.h                             |    621 [31m-[m
 mingw64/include/diagnostics.h                     |    157 [31m-[m
 mingw64/include/dis-asm.h                         |    495 [31m-[m
 mingw64/include/gdb/jit-reader.h                  |    346 [31m-[m
 mingw64/include/gnumake.h                         |     79 [31m-[m
 mingw64/include/libiberty/ansidecl.h              |    354 [31m-[m
 mingw64/include/libiberty/demangle.h              |    730 [31m-[m
 mingw64/include/libiberty/dyn-string.h            |     72 [31m-[m
 mingw64/include/libiberty/fibheap.h               |     94 [31m-[m
 mingw64/include/libiberty/floatformat.h           |    162 [31m-[m
 mingw64/include/libiberty/hashtab.h               |    207 [31m-[m
 mingw64/include/libiberty/libiberty.h             |    761 [31m-[m
 mingw64/include/libiberty/objalloc.h              |    115 [31m-[m
 mingw64/include/libiberty/partition.h             |     82 [31m-[m
 mingw64/include/libiberty/safe-ctype.h            |    150 [31m-[m
 mingw64/include/libiberty/sort.h                  |     48 [31m-[m
 mingw64/include/libiberty/splay-tree.h            |    165 [31m-[m
 mingw64/include/libiberty/timeval-utils.h         |     40 [31m-[m
 mingw64/include/libmangle.h                       |    114 [31m-[m
 mingw64/include/plugin-api.h                      |    622 [31m-[m
 mingw64/include/sframe-api.h                      |    282 [31m-[m
 mingw64/include/sframe.h                          |    349 [31m-[m
 mingw64/include/symcat.h                          |     55 [31m-[m
 mingw64/lib/bfd-plugins/libdep.dll                |    Bin [31m18720[m -> [32m0[m bytes
 .../lib/gcc/x86_64-w64-mingw32/15.1.0/crtbegin.o  |    Bin [31m690[m -> [32m0[m bytes
 .../lib/gcc/x86_64-w64-mingw32/15.1.0/crtend.o    |    Bin [31m891[m -> [32m0[m bytes
 .../gcc/x86_64-w64-mingw32/15.1.0/crtfastmath.o   |    Bin [31m2835[m -> [32m0[m bytes
 .../15.1.0/finclude/ieee_arithmetic.mod           |    Bin [31m13485[m -> [32m0[m bytes
 .../15.1.0/finclude/ieee_exceptions.mod           |    Bin [31m2319[m -> [32m0[m bytes
 .../15.1.0/finclude/ieee_features.mod             |    Bin [31m1060[m -> [32m0[m bytes
 .../15.1.0/finclude/omp_lib.f90                   |   1040 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/finclude/omp_lib.h  |    634 [31m-[m
 .../15.1.0/finclude/omp_lib.mod                   |    Bin [31m9873[m -> [32m0[m bytes
 .../15.1.0/finclude/omp_lib_kinds.mod             |    Bin [31m3366[m -> [32m0[m bytes
 .../15.1.0/finclude/openacc.f90                   |   1683 [31m-[m
 .../15.1.0/finclude/openacc.mod                   |    Bin [31m4552[m -> [32m0[m bytes
 .../15.1.0/finclude/openacc_kinds.mod             |    Bin [31m711[m -> [32m0[m bytes
 .../15.1.0/finclude/openacc_lib.h                 |    685 [31m-[m
 .../15.1.0/include-fixed/README                   |     14 [31m-[m
 .../15.1.0/include/ISO_Fortran_binding.h          |    321 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/acc_prof.h  |    252 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/adxintrin.h |     81 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/ammintrin.h |     93 [31m-[m
 .../15.1.0/include/amxavx512intrin.h              |    189 [31m-[m
 .../15.1.0/include/amxbf16intrin.h                |     52 [31m-[m
 .../15.1.0/include/amxcomplexintrin.h             |     59 [31m-[m
 .../15.1.0/include/amxfp16intrin.h                |     46 [31m-[m
 .../15.1.0/include/amxfp8intrin.h                 |     67 [31m-[m
 .../15.1.0/include/amxint8intrin.h                |     61 [31m-[m
 .../15.1.0/include/amxmovrsintrin.h               |    111 [31m-[m
 .../15.1.0/include/amxtf32intrin.h                |     47 [31m-[m
 .../15.1.0/include/amxtileintrin.h                |     98 [31m-[m
 .../15.1.0/include/amxtransposeintrin.h           |    177 [31m-[m
 .../15.1.0/include/avx10_2-512bf16intrin.h        |    681 [31m-[m
 .../15.1.0/include/avx10_2-512convertintrin.h     |    572 [31m-[m
 .../15.1.0/include/avx10_2-512mediaintrin.h       |    514 [31m-[m
 .../15.1.0/include/avx10_2-512minmaxintrin.h      |    489 [31m-[m
 .../15.1.0/include/avx10_2-512satcvtintrin.h      |   1575 [31m-[m
 .../15.1.0/include/avx10_2bf16intrin.h            |   1335 [31m-[m
 .../15.1.0/include/avx10_2convertintrin.h         |    960 [31m-[m
 .../15.1.0/include/avx10_2copyintrin.h            |     38 [31m-[m
 .../15.1.0/include/avx10_2mediaintrin.h           |    839 [31m-[m
 .../15.1.0/include/avx10_2minmaxintrin.h          |    884 [31m-[m
 .../15.1.0/include/avx10_2satcvtintrin.h          |   1409 [31m-[m
 .../15.1.0/include/avx2intrin.h                   |   2270 [31m-[m
 .../15.1.0/include/avx512bf16intrin.h             |    163 [31m-[m
 .../15.1.0/include/avx512bf16vlintrin.h           |    276 [31m-[m
 .../15.1.0/include/avx512bitalgintrin.h           |    111 [31m-[m
 .../15.1.0/include/avx512bitalgvlintrin.h         |    180 [31m-[m
 .../15.1.0/include/avx512bwintrin.h               |   3377 [31m-[m
 .../15.1.0/include/avx512cdintrin.h               |    184 [31m-[m
 .../15.1.0/include/avx512dqintrin.h               |   2905 [31m-[m
 .../15.1.0/include/avx512fintrin.h                |  16617 [31m--[m
 .../15.1.0/include/avx512fp16intrin.h             |   7246 [31m-[m
 .../15.1.0/include/avx512fp16vlintrin.h           |   3388 [31m-[m
 .../15.1.0/include/avx512ifmaintrin.h             |    104 [31m-[m
 .../15.1.0/include/avx512ifmavlintrin.h           |    145 [31m-[m
 .../15.1.0/include/avx512vbmi2intrin.h            |    545 [31m-[m
 .../15.1.0/include/avx512vbmi2vlintrin.h          |   1022 [31m-[m
 .../15.1.0/include/avx512vbmiintrin.h             |    158 [31m-[m
 .../15.1.0/include/avx512vbmivlintrin.h           |    273 [31m-[m
 .../15.1.0/include/avx512vlbwintrin.h             |   5248 [31m-[m
 .../15.1.0/include/avx512vldqintrin.h             |   2016 [31m-[m
 .../15.1.0/include/avx512vlintrin.h               |  13929 [31m--[m
 .../15.1.0/include/avx512vnniintrin.h             |    144 [31m-[m
 .../15.1.0/include/avx512vnnivlintrin.h           |    210 [31m-[m
 .../15.1.0/include/avx512vp2intersectintrin.h     |     58 [31m-[m
 .../15.1.0/include/avx512vp2intersectvlintrin.h   |     73 [31m-[m
 .../15.1.0/include/avx512vpopcntdqintrin.h        |     94 [31m-[m
 .../15.1.0/include/avx512vpopcntdqvlintrin.h      |    147 [31m-[m
 .../15.1.0/include/avxifmaintrin.h                |     78 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/avxintrin.h |   1551 [31m-[m
 .../15.1.0/include/avxneconvertintrin.h           |    140 [31m-[m
 .../15.1.0/include/avxvnniint16intrin.h           |    138 [31m-[m
 .../15.1.0/include/avxvnniint8intrin.h            |    138 [31m-[m
 .../15.1.0/include/avxvnniintrin.h                |    113 [31m-[m
 .../15.1.0/include/bmi2intrin.h                   |    109 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/bmiintrin.h |    202 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/bmmintrin.h |     29 [31m-[m
 .../15.1.0/include/c++/algorithm                  |     98 [31m-[m
 .../gcc/x86_64-w64-mingw32/15.1.0/include/c++/any |    672 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/array   |    521 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/atomic  |   1803 [31m-[m
 .../15.1.0/include/c++/backward/auto_ptr.h        |    343 [31m-[m
 .../include/c++/backward/backward_warning.h       |     64 [31m-[m
 .../15.1.0/include/c++/backward/binders.h         |    184 [31m-[m
 .../15.1.0/include/c++/backward/hash_fun.h        |    170 [31m-[m
 .../15.1.0/include/c++/backward/hash_map          |    599 [31m-[m
 .../15.1.0/include/c++/backward/hash_set          |    569 [31m-[m
 .../15.1.0/include/c++/backward/hashtable.h       |   1166 [31m-[m
 .../15.1.0/include/c++/backward/strstream         |    251 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/barrier |    267 [31m-[m
 .../gcc/x86_64-w64-mingw32/15.1.0/include/c++/bit |    500 [31m-[m
 .../15.1.0/include/c++/bits/algorithmfwd.h        |    992 [31m-[m
 .../15.1.0/include/c++/bits/align.h               |    108 [31m-[m
 .../15.1.0/include/c++/bits/alloc_traits.h        |   1053 [31m-[m
 .../15.1.0/include/c++/bits/allocated_ptr.h       |    144 [31m-[m
 .../15.1.0/include/c++/bits/allocator.h           |    303 [31m-[m
 .../15.1.0/include/c++/bits/atomic_base.h         |   2108 [31m-[m
 .../15.1.0/include/c++/bits/atomic_futex.h        |    366 [31m-[m
 .../include/c++/bits/atomic_lockfree_defines.h    |     68 [31m-[m
 .../15.1.0/include/c++/bits/atomic_timed_wait.h   |    454 [31m-[m
 .../15.1.0/include/c++/bits/atomic_wait.h         |    482 [31m-[m
 .../15.1.0/include/c++/bits/basic_ios.h           |    533 [31m-[m
 .../15.1.0/include/c++/bits/basic_ios.tcc         |    190 [31m-[m
 .../15.1.0/include/c++/bits/basic_string.h        |   5041 [31m-[m
 .../15.1.0/include/c++/bits/basic_string.tcc      |   1066 [31m-[m
 .../15.1.0/include/c++/bits/boost_concept_check.h |    885 [31m-[m
 .../15.1.0/include/c++/bits/c++0x_warning.h       |     37 [31m-[m
 .../15.1.0/include/c++/bits/char_traits.h         |   1016 [31m-[m
 .../15.1.0/include/c++/bits/charconv.h            |    118 [31m-[m
 .../15.1.0/include/c++/bits/chrono.h              |   1521 [31m-[m
 .../15.1.0/include/c++/bits/chrono_io.h           |   4515 [31m-[m
 .../15.1.0/include/c++/bits/codecvt.h             |    849 [31m-[m
 .../15.1.0/include/c++/bits/concept_check.h       |     87 [31m-[m
 .../15.1.0/include/c++/bits/cow_string.h          |   3936 [31m-[m
 .../15.1.0/include/c++/bits/cpp_type_traits.h     |    707 [31m-[m
 .../15.1.0/include/c++/bits/cxxabi_forced.h       |     62 [31m-[m
 .../include/c++/bits/cxxabi_init_exception.h      |     83 [31m-[m
 .../15.1.0/include/c++/bits/deque.tcc             |   1548 [31m-[m
 .../15.1.0/include/c++/bits/elements_of.h         |     74 [31m-[m
 .../include/c++/bits/enable_special_members.h     |    318 [31m-[m
 .../15.1.0/include/c++/bits/erase_if.h            |     73 [31m-[m
 .../15.1.0/include/c++/bits/exception.h           |     85 [31m-[m
 .../15.1.0/include/c++/bits/exception_defines.h   |     45 [31m-[m
 .../15.1.0/include/c++/bits/exception_ptr.h       |    294 [31m-[m
 .../15.1.0/include/c++/bits/formatfwd.h           |     70 [31m-[m
 .../15.1.0/include/c++/bits/forward_list.h        |   2068 [31m-[m
 .../15.1.0/include/c++/bits/forward_list.tcc      |    517 [31m-[m
 .../15.1.0/include/c++/bits/fs_dir.h              |    656 [31m-[m
 .../15.1.0/include/c++/bits/fs_fwd.h              |    382 [31m-[m
 .../15.1.0/include/c++/bits/fs_ops.h              |    392 [31m-[m
 .../15.1.0/include/c++/bits/fs_path.h             |   1459 [31m-[m
 .../15.1.0/include/c++/bits/fstream.tcc           |   1103 [31m-[m
 .../15.1.0/include/c++/bits/functexcept.h         |    143 [31m-[m
 .../15.1.0/include/c++/bits/functional_hash.h     |    308 [31m-[m
 .../15.1.0/include/c++/bits/gslice.h              |    189 [31m-[m
 .../15.1.0/include/c++/bits/gslice_array.h        |    227 [31m-[m
 .../15.1.0/include/c++/bits/hash_bytes.h          |     61 [31m-[m
 .../15.1.0/include/c++/bits/hashtable.h           |   2983 [31m-[m
 .../15.1.0/include/c++/bits/hashtable_policy.h    |   1628 [31m-[m
 .../15.1.0/include/c++/bits/indirect_array.h      |    216 [31m-[m
 .../15.1.0/include/c++/bits/invoke.h              |    162 [31m-[m
 .../15.1.0/include/c++/bits/ios_base.h            |   1157 [31m-[m
 .../15.1.0/include/c++/bits/istream.tcc           |   1185 [31m-[m
 .../15.1.0/include/c++/bits/iterator_concepts.h   |   1080 [31m-[m
 .../15.1.0/include/c++/bits/list.tcc              |    671 [31m-[m
 .../15.1.0/include/c++/bits/locale_classes.h      |    898 [31m-[m
 .../15.1.0/include/c++/bits/locale_classes.tcc    |    429 [31m-[m
 .../15.1.0/include/c++/bits/locale_conv.h         |    635 [31m-[m
 .../15.1.0/include/c++/bits/locale_facets.h       |   2703 [31m-[m
 .../15.1.0/include/c++/bits/locale_facets.tcc     |   1447 [31m-[m
 .../15.1.0/include/c++/bits/locale_facets_nonio.h |   2073 [31m-[m
 .../include/c++/bits/locale_facets_nonio.tcc      |   1910 [31m-[m
 .../15.1.0/include/c++/bits/localefwd.h           |    216 [31m-[m
 .../15.1.0/include/c++/bits/mask_array.h          |    226 [31m-[m
 .../15.1.0/include/c++/bits/max_size_type.h       |    825 [31m-[m
 .../15.1.0/include/c++/bits/memory_resource.h     |    525 [31m-[m
 .../15.1.0/include/c++/bits/memoryfwd.h           |     86 [31m-[m
 .../15.1.0/include/c++/bits/mofunc_impl.h         |    233 [31m-[m
 .../15.1.0/include/c++/bits/monostate.h           |     78 [31m-[m
 .../15.1.0/include/c++/bits/move.h                |    262 [31m-[m
 .../15.1.0/include/c++/bits/move_only_function.h  |    218 [31m-[m
 .../15.1.0/include/c++/bits/nested_exception.h    |    243 [31m-[m
 .../15.1.0/include/c++/bits/new_allocator.h       |    243 [31m-[m
 .../15.1.0/include/c++/bits/node_handle.h         |    410 [31m-[m
 .../15.1.0/include/c++/bits/ostream.h             |    846 [31m-[m
 .../15.1.0/include/c++/bits/ostream.tcc           |    404 [31m-[m
 .../15.1.0/include/c++/bits/ostream_insert.h      |    140 [31m-[m
 .../15.1.0/include/c++/bits/out_ptr.h             |    475 [31m-[m
 .../15.1.0/include/c++/bits/parse_numbers.h       |    297 [31m-[m
 .../15.1.0/include/c++/bits/postypes.h            |    228 [31m-[m
 .../15.1.0/include/c++/bits/predefined_ops.h      |    407 [31m-[m
 .../15.1.0/include/c++/bits/ptr_traits.h          |    273 [31m-[m
 .../15.1.0/include/c++/bits/quoted_string.h       |    188 [31m-[m
 .../15.1.0/include/c++/bits/random.h              |   6406 [31m-[m
 .../15.1.0/include/c++/bits/random.tcc            |   3386 [31m-[m
 .../15.1.0/include/c++/bits/range_access.h        |    381 [31m-[m
 .../15.1.0/include/c++/bits/ranges_algo.h         |   4076 [31m-[m
 .../15.1.0/include/c++/bits/ranges_algobase.h     |    639 [31m-[m
 .../15.1.0/include/c++/bits/ranges_base.h         |   1125 [31m-[m
 .../15.1.0/include/c++/bits/ranges_cmp.h          |    179 [31m-[m
 .../include/c++/bits/ranges_uninitialized.h       |    601 [31m-[m
 .../15.1.0/include/c++/bits/ranges_util.h         |    856 [31m-[m
 .../15.1.0/include/c++/bits/refwrap.h             |    465 [31m-[m
 .../15.1.0/include/c++/bits/regex.h               |   3140 [31m-[m
 .../15.1.0/include/c++/bits/regex.tcc             |    667 [31m-[m
 .../15.1.0/include/c++/bits/regex_automaton.h     |    405 [31m-[m
 .../15.1.0/include/c++/bits/regex_automaton.tcc   |    232 [31m-[m
 .../15.1.0/include/c++/bits/regex_compiler.h      |    571 [31m-[m
 .../15.1.0/include/c++/bits/regex_compiler.tcc    |    632 [31m-[m
 .../15.1.0/include/c++/bits/regex_constants.h     |    424 [31m-[m
 .../15.1.0/include/c++/bits/regex_error.h         |    192 [31m-[m
 .../15.1.0/include/c++/bits/regex_executor.h      |    312 [31m-[m
 .../15.1.0/include/c++/bits/regex_executor.tcc    |    569 [31m-[m
 .../15.1.0/include/c++/bits/regex_scanner.h       |    271 [31m-[m
 .../15.1.0/include/c++/bits/regex_scanner.tcc     |    584 [31m-[m
 .../15.1.0/include/c++/bits/requires_hosted.h     |     37 [31m-[m
 .../15.1.0/include/c++/bits/sat_arith.h           |    150 [31m-[m
 .../15.1.0/include/c++/bits/semaphore_base.h      |    264 [31m-[m
 .../15.1.0/include/c++/bits/shared_ptr.h          |   1195 [31m-[m
 .../15.1.0/include/c++/bits/shared_ptr_atomic.h   |    871 [31m-[m
 .../15.1.0/include/c++/bits/shared_ptr_base.h     |   2268 [31m-[m
 .../15.1.0/include/c++/bits/slice_array.h         |    288 [31m-[m
 .../15.1.0/include/c++/bits/specfun.h             |   1386 [31m-[m
 .../15.1.0/include/c++/bits/sstream.tcc           |    312 [31m-[m
 .../15.1.0/include/c++/bits/std.cc                |   4030 [31m-[m
 .../15.1.0/include/c++/bits/std.compat.cc         |    795 [31m-[m
 .../15.1.0/include/c++/bits/std_abs.h             |    162 [31m-[m
 .../15.1.0/include/c++/bits/std_function.h        |    807 [31m-[m
 .../15.1.0/include/c++/bits/std_mutex.h           |    272 [31m-[m
 .../15.1.0/include/c++/bits/std_thread.h          |    389 [31m-[m
 .../15.1.0/include/c++/bits/stl_algo.h            |   5935 [31m-[m
 .../15.1.0/include/c++/bits/stl_algobase.h        |   2304 [31m-[m
 .../15.1.0/include/c++/bits/stl_bvector.h         |   1841 [31m-[m
 .../15.1.0/include/c++/bits/stl_construct.h       |    303 [31m-[m
 .../15.1.0/include/c++/bits/stl_deque.h           |   2505 [31m-[m
 .../15.1.0/include/c++/bits/stl_function.h        |   1444 [31m-[m
 .../15.1.0/include/c++/bits/stl_heap.h            |    584 [31m-[m
 .../15.1.0/include/c++/bits/stl_iterator.h        |   3120 [31m-[m
 .../include/c++/bits/stl_iterator_base_funcs.h    |    261 [31m-[m
 .../include/c++/bits/stl_iterator_base_types.h    |    289 [31m-[m
 .../15.1.0/include/c++/bits/stl_list.h            |   2865 [31m-[m
 .../15.1.0/include/c++/bits/stl_map.h             |   1676 [31m-[m
 .../15.1.0/include/c++/bits/stl_multimap.h        |   1299 [31m-[m
 .../15.1.0/include/c++/bits/stl_multiset.h        |   1129 [31m-[m
 .../15.1.0/include/c++/bits/stl_numeric.h         |    411 [31m-[m
 .../15.1.0/include/c++/bits/stl_pair.h            |   1368 [31m-[m
 .../15.1.0/include/c++/bits/stl_queue.h           |    970 [31m-[m
 .../include/c++/bits/stl_raw_storage_iter.h       |    128 [31m-[m
 .../15.1.0/include/c++/bits/stl_relops.h          |    134 [31m-[m
 .../15.1.0/include/c++/bits/stl_set.h             |   1143 [31m-[m
 .../15.1.0/include/c++/bits/stl_stack.h           |    479 [31m-[m
 .../15.1.0/include/c++/bits/stl_tempbuf.h         |    332 [31m-[m
 .../15.1.0/include/c++/bits/stl_tree.h            |   3243 [31m-[m
 .../15.1.0/include/c++/bits/stl_uninitialized.h   |   1366 [31m-[m
 .../15.1.0/include/c++/bits/stl_vector.h          |   2432 [31m-[m
 .../15.1.0/include/c++/bits/stream_iterator.h     |    276 [31m-[m
 .../15.1.0/include/c++/bits/streambuf.tcc         |    175 [31m-[m
 .../15.1.0/include/c++/bits/streambuf_iterator.h  |    522 [31m-[m
 .../15.1.0/include/c++/bits/string_view.tcc       |    243 [31m-[m
 .../15.1.0/include/c++/bits/stringfwd.h           |    102 [31m-[m
 .../15.1.0/include/c++/bits/text_encoding-data.h  |    931 [31m-[m
 .../15.1.0/include/c++/bits/this_thread_sleep.h   |    119 [31m-[m
 .../15.1.0/include/c++/bits/unicode-data.h        |    799 [31m-[m
 .../15.1.0/include/c++/bits/unicode.h             |   1151 [31m-[m
 .../15.1.0/include/c++/bits/uniform_int_dist.h    |    468 [31m-[m
 .../15.1.0/include/c++/bits/unique_lock.h         |    253 [31m-[m
 .../15.1.0/include/c++/bits/unique_ptr.h          |   1192 [31m-[m
 .../15.1.0/include/c++/bits/unordered_map.h       |   2457 [31m-[m
 .../15.1.0/include/c++/bits/unordered_set.h       |   2116 [31m-[m
 .../15.1.0/include/c++/bits/uses_allocator.h      |    207 [31m-[m
 .../15.1.0/include/c++/bits/uses_allocator_args.h |    250 [31m-[m
 .../15.1.0/include/c++/bits/utility.h             |    323 [31m-[m
 .../15.1.0/include/c++/bits/valarray_after.h      |    558 [31m-[m
 .../15.1.0/include/c++/bits/valarray_array.h      |    618 [31m-[m
 .../15.1.0/include/c++/bits/valarray_array.tcc    |    244 [31m-[m
 .../15.1.0/include/c++/bits/valarray_before.h     |    760 [31m-[m
 .../15.1.0/include/c++/bits/vector.tcc            |   1321 [31m-[m
 .../15.1.0/include/c++/bits/version.h             |   2177 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/bitset  |   1751 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cassert |     46 [31m-[m
 .../15.1.0/include/c++/ccomplex                   |     53 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cctype  |     96 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cerrno  |     54 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cfenv   |     86 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cfloat  |     58 [31m-[m
 .../15.1.0/include/c++/charconv                   |    941 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/chrono  |   3383 [31m-[m
 .../15.1.0/include/c++/cinttypes                  |     83 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/ciso646 |     50 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/climits |     66 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/clocale |     60 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cmath   |   3918 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/codecvt |    179 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/compare |   1271 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/complex |   2750 [31m-[m
 .../15.1.0/include/c++/complex.h                  |     50 [31m-[m
 .../15.1.0/include/c++/concepts                   |    391 [31m-[m
 .../15.1.0/include/c++/condition_variable         |    455 [31m-[m
 .../15.1.0/include/c++/coroutine                  |    367 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/csetjmp |     63 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/csignal |     59 [31m-[m
 .../15.1.0/include/c++/cstdalign                  |     53 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cstdarg |     60 [31m-[m
 .../15.1.0/include/c++/cstdbool                   |     53 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cstddef |    199 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cstdint |    148 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cstdio  |    196 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cstdlib |    288 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cstring |    131 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/ctgmath |     53 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/ctime   |     86 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cuchar  |    110 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cwchar  |    308 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/cwctype |    112 [31m-[m
 .../15.1.0/include/c++/cxxabi.h                   |    717 [31m-[m
 .../15.1.0/include/c++/debug/assertions.h         |     70 [31m-[m
 .../15.1.0/include/c++/debug/bitset               |    464 [31m-[m
 .../15.1.0/include/c++/debug/debug.h              |    145 [31m-[m
 .../15.1.0/include/c++/debug/deque                |    775 [31m-[m
 .../15.1.0/include/c++/debug/formatter.h          |    639 [31m-[m
 .../15.1.0/include/c++/debug/forward_list         |   1027 [31m-[m
 .../15.1.0/include/c++/debug/functions.h          |    470 [31m-[m
 .../15.1.0/include/c++/debug/helper_functions.h   |    337 [31m-[m
 .../15.1.0/include/c++/debug/list                 |   1058 [31m-[m
 .../15.1.0/include/c++/debug/macros.h             |    467 [31m-[m
 .../15.1.0/include/c++/debug/map                  |     48 [31m-[m
 .../15.1.0/include/c++/debug/map.h                |    842 [31m-[m
 .../15.1.0/include/c++/debug/multimap.h           |    724 [31m-[m
 .../15.1.0/include/c++/debug/multiset.h           |    683 [31m-[m
 .../15.1.0/include/c++/debug/safe_base.h          |    302 [31m-[m
 .../15.1.0/include/c++/debug/safe_container.h     |    149 [31m-[m
 .../15.1.0/include/c++/debug/safe_iterator.h      |   1173 [31m-[m
 .../15.1.0/include/c++/debug/safe_iterator.tcc    |    597 [31m-[m
 .../include/c++/debug/safe_local_iterator.h       |    440 [31m-[m
 .../include/c++/debug/safe_local_iterator.tcc     |    113 [31m-[m
 .../15.1.0/include/c++/debug/safe_sequence.h      |    150 [31m-[m
 .../15.1.0/include/c++/debug/safe_sequence.tcc    |    156 [31m-[m
 .../include/c++/debug/safe_unordered_base.h       |    185 [31m-[m
 .../include/c++/debug/safe_unordered_container.h  |    194 [31m-[m
 .../c++/debug/safe_unordered_container.tcc        |    100 [31m-[m
 .../15.1.0/include/c++/debug/set                  |     46 [31m-[m
 .../15.1.0/include/c++/debug/set.h                |    693 [31m-[m
 .../15.1.0/include/c++/debug/stl_iterator.h       |    148 [31m-[m
 .../15.1.0/include/c++/debug/string               |   1341 [31m-[m
 .../15.1.0/include/c++/debug/unordered_map        |   1733 [31m-[m
 .../15.1.0/include/c++/debug/unordered_set        |   1550 [31m-[m
 .../15.1.0/include/c++/debug/vector               |   1057 [31m-[m
 .../15.1.0/include/c++/decimal/decimal            |    500 [31m-[m
 .../15.1.0/include/c++/decimal/decimal.h          |    471 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/deque   |    147 [31m-[m
 .../15.1.0/include/c++/exception                  |    172 [31m-[m
 .../15.1.0/include/c++/execution                  |     62 [31m-[m
 .../15.1.0/include/c++/expected                   |   1909 [31m-[m
 .../15.1.0/include/c++/experimental/algorithm     |    112 [31m-[m
 .../15.1.0/include/c++/experimental/any           |    571 [31m-[m
 .../15.1.0/include/c++/experimental/array         |    120 [31m-[m
 .../15.1.0/include/c++/experimental/bits/fs_dir.h |    364 [31m-[m
 .../15.1.0/include/c++/experimental/bits/fs_fwd.h |    320 [31m-[m
 .../15.1.0/include/c++/experimental/bits/fs_ops.h |    372 [31m-[m
 .../include/c++/experimental/bits/fs_path.h       |   1323 [31m-[m
 .../include/c++/experimental/bits/lfts_config.h   |     67 [31m-[m
 .../15.1.0/include/c++/experimental/bits/net.h    |    348 [31m-[m
 .../c++/experimental/bits/numeric_traits.h        |    571 [31m-[m
 .../include/c++/experimental/bits/shared_ptr.h    |    686 [31m-[m
 .../15.1.0/include/c++/experimental/bits/simd.h   |   5741 [31m-[m
 .../include/c++/experimental/bits/simd_builtin.h  |   2894 [31m-[m
 .../c++/experimental/bits/simd_converter.h        |    401 [31m-[m
 .../include/c++/experimental/bits/simd_detail.h   |    365 [31m-[m
 .../c++/experimental/bits/simd_fixed_size.h       |   2031 [31m-[m
 .../include/c++/experimental/bits/simd_math.h     |   1501 [31m-[m
 .../include/c++/experimental/bits/simd_neon.h     |    534 [31m-[m
 .../include/c++/experimental/bits/simd_ppc.h      |    158 [31m-[m
 .../include/c++/experimental/bits/simd_scalar.h   |    865 [31m-[m
 .../include/c++/experimental/bits/simd_sve.h      |   1852 [31m-[m
 .../include/c++/experimental/bits/simd_x86.h      |   5309 [31m-[m
 .../c++/experimental/bits/simd_x86_conversions.h  |   2029 [31m-[m
 .../include/c++/experimental/bits/string_view.tcc |    233 [31m-[m
 .../15.1.0/include/c++/experimental/buffer        |    896 [31m-[m
 .../15.1.0/include/c++/experimental/chrono        |     69 [31m-[m
 .../15.1.0/include/c++/experimental/contract      |     83 [31m-[m
 .../15.1.0/include/c++/experimental/deque         |     81 [31m-[m
 .../15.1.0/include/c++/experimental/executor      |   2057 [31m-[m
 .../15.1.0/include/c++/experimental/filesystem    |     50 [31m-[m
 .../15.1.0/include/c++/experimental/forward_list  |     80 [31m-[m
 .../15.1.0/include/c++/experimental/functional    |    386 [31m-[m
 .../15.1.0/include/c++/experimental/internet      |   2606 [31m-[m
 .../15.1.0/include/c++/experimental/io_context    |    913 [31m-[m
 .../15.1.0/include/c++/experimental/iterator      |    119 [31m-[m
 .../15.1.0/include/c++/experimental/list          |     80 [31m-[m
 .../15.1.0/include/c++/experimental/map           |     90 [31m-[m
 .../15.1.0/include/c++/experimental/memory        |    259 [31m-[m
 .../include/c++/experimental/memory_resource      |    595 [31m-[m
 .../15.1.0/include/c++/experimental/net           |     50 [31m-[m
 .../15.1.0/include/c++/experimental/netfwd        |    136 [31m-[m
 .../15.1.0/include/c++/experimental/numeric       |    107 [31m-[m
 .../15.1.0/include/c++/experimental/optional      |    939 [31m-[m
 .../include/c++/experimental/propagate_const      |    594 [31m-[m
 .../15.1.0/include/c++/experimental/random        |     86 [31m-[m
 .../15.1.0/include/c++/experimental/ratio         |     77 [31m-[m
 .../15.1.0/include/c++/experimental/regex         |     74 [31m-[m
 .../15.1.0/include/c++/experimental/scope         |    501 [31m-[m
 .../15.1.0/include/c++/experimental/set           |     88 [31m-[m
 .../15.1.0/include/c++/experimental/simd          |     95 [31m-[m
 .../15.1.0/include/c++/experimental/socket        |   2690 [31m-[m
 .../include/c++/experimental/source_location      |     85 [31m-[m
 .../15.1.0/include/c++/experimental/string        |     98 [31m-[m
 .../15.1.0/include/c++/experimental/string_view   |    713 [31m-[m
 .../include/c++/experimental/synchronized_value   |    102 [31m-[m
 .../15.1.0/include/c++/experimental/system_error  |     70 [31m-[m
 .../15.1.0/include/c++/experimental/timer         |    212 [31m-[m
 .../15.1.0/include/c++/experimental/tuple         |     85 [31m-[m
 .../15.1.0/include/c++/experimental/type_traits   |    352 [31m-[m
 .../15.1.0/include/c++/experimental/unordered_map |     97 [31m-[m
 .../15.1.0/include/c++/experimental/unordered_set |     96 [31m-[m
 .../15.1.0/include/c++/experimental/utility       |     54 [31m-[m
 .../15.1.0/include/c++/experimental/vector        |     84 [31m-[m
 .../15.1.0/include/c++/ext/algorithm              |    600 [31m-[m
 .../15.1.0/include/c++/ext/aligned_buffer.h       |    130 [31m-[m
 .../15.1.0/include/c++/ext/alloc_traits.h         |    187 [31m-[m
 .../15.1.0/include/c++/ext/atomicity.h            |    129 [31m-[m
 .../15.1.0/include/c++/ext/bitmap_allocator.h     |   1137 [31m-[m
 .../15.1.0/include/c++/ext/cast.h                 |    121 [31m-[m
 .../15.1.0/include/c++/ext/cmath                  |    156 [31m-[m
 .../include/c++/ext/codecvt_specializations.h     |    517 [31m-[m
 .../15.1.0/include/c++/ext/concurrence.h          |    322 [31m-[m
 .../15.1.0/include/c++/ext/debug_allocator.h      |    196 [31m-[m
 .../15.1.0/include/c++/ext/enc_filebuf.h          |     67 [31m-[m
 .../15.1.0/include/c++/ext/extptr_allocator.h     |    206 [31m-[m
 .../15.1.0/include/c++/ext/functional             |    431 [31m-[m
 .../15.1.0/include/c++/ext/hash_map               |    599 [31m-[m
 .../15.1.0/include/c++/ext/hash_set               |    569 [31m-[m
 .../15.1.0/include/c++/ext/iterator               |    118 [31m-[m
 .../15.1.0/include/c++/ext/malloc_allocator.h     |    213 [31m-[m
 .../15.1.0/include/c++/ext/memory                 |    204 [31m-[m
 .../15.1.0/include/c++/ext/mt_allocator.h         |    788 [31m-[m
 .../15.1.0/include/c++/ext/new_allocator.h        |     77 [31m-[m
 .../15.1.0/include/c++/ext/numeric                |    156 [31m-[m
 .../15.1.0/include/c++/ext/numeric_traits.h       |    243 [31m-[m
 .../include/c++/ext/pb_ds/assoc_container.hpp     |    861 [31m-[m
 .../detail/bin_search_tree_/bin_search_tree_.hpp  |    429 [31m-[m
 .../constructors_destructor_fn_imps.hpp           |    220 [31m-[m
 .../detail/bin_search_tree_/debug_fn_imps.hpp     |    280 [31m-[m
 .../detail/bin_search_tree_/erase_fn_imps.hpp     |    106 [31m-[m
 .../detail/bin_search_tree_/find_fn_imps.hpp      |    174 [31m-[m
 .../detail/bin_search_tree_/info_fn_imps.hpp      |     68 [31m-[m
 .../detail/bin_search_tree_/insert_fn_imps.hpp    |    183 [31m-[m
 .../detail/bin_search_tree_/iterators_fn_imps.hpp |    139 [31m-[m
 .../detail/bin_search_tree_/node_iterators.hpp    |    182 [31m-[m
 .../detail/bin_search_tree_/point_iterators.hpp   |    367 [31m-[m
 .../bin_search_tree_/policy_access_fn_imps.hpp    |     55 [31m-[m
 .../detail/bin_search_tree_/r_erase_fn_imps.hpp   |    106 [31m-[m
 .../detail/bin_search_tree_/rotate_fn_imps.hpp    |    158 [31m-[m
 .../bin_search_tree_/split_join_fn_imps.hpp       |    153 [31m-[m
 .../ext/pb_ds/detail/bin_search_tree_/traits.hpp  |    232 [31m-[m
 .../pb_ds/detail/binary_heap_/binary_heap_.hpp    |    337 [31m-[m
 .../pb_ds/detail/binary_heap_/const_iterator.hpp  |    139 [31m-[m
 .../constructors_destructor_fn_imps.hpp           |    142 [31m-[m
 .../pb_ds/detail/binary_heap_/debug_fn_imps.hpp   |     75 [31m-[m
 .../ext/pb_ds/detail/binary_heap_/entry_cmp.hpp   |     85 [31m-[m
 .../ext/pb_ds/detail/binary_heap_/entry_pred.hpp  |     85 [31m-[m
 .../pb_ds/detail/binary_heap_/erase_fn_imps.hpp   |    211 [31m-[m
 .../pb_ds/detail/binary_heap_/find_fn_imps.hpp    |     82 [31m-[m
 .../pb_ds/detail/binary_heap_/info_fn_imps.hpp    |     62 [31m-[m
 .../pb_ds/detail/binary_heap_/insert_fn_imps.hpp  |    176 [31m-[m
 .../detail/binary_heap_/iterators_fn_imps.hpp     |     67 [31m-[m
 .../detail/binary_heap_/point_const_iterator.hpp  |    140 [31m-[m
 .../detail/binary_heap_/policy_access_fn_imps.hpp |     59 [31m-[m
 .../pb_ds/detail/binary_heap_/resize_policy.hpp   |    240 [31m-[m
 .../detail/binary_heap_/split_join_fn_imps.hpp    |    163 [31m-[m
 .../pb_ds/detail/binary_heap_/trace_fn_imps.hpp   |     81 [31m-[m
 .../detail/binomial_heap_/binomial_heap_.hpp      |    112 [31m-[m
 .../constructors_destructor_fn_imps.hpp           |     63 [31m-[m
 .../pb_ds/detail/binomial_heap_/debug_fn_imps.hpp |     52 [31m-[m
 .../binomial_heap_base_/binomial_heap_base_.hpp   |    211 [31m-[m
 .../constructors_destructor_fn_imps.hpp           |     88 [31m-[m
 .../detail/binomial_heap_base_/debug_fn_imps.hpp  |    103 [31m-[m
 .../detail/binomial_heap_base_/erase_fn_imps.hpp  |    164 [31m-[m
 .../detail/binomial_heap_base_/find_fn_imps.hpp   |     73 [31m-[m
 .../detail/binomial_heap_base_/insert_fn_imps.hpp |    181 [31m-[m
 .../binomial_heap_base_/split_join_fn_imps.hpp    |    200 [31m-[m
 .../pb_ds/detail/branch_policy/branch_policy.hpp  |    120 [31m-[m
 .../detail/branch_policy/null_node_metadata.hpp   |     66 [31m-[m
 .../c++/ext/pb_ds/detail/branch_policy/traits.hpp |     95 [31m-[m
 .../detail/cc_hash_table_map_/cc_ht_map_.hpp      |    688 [31m-[m
 .../detail/cc_hash_table_map_/cmp_fn_imps.hpp     |     86 [31m-[m
 .../cond_key_dtor_entry_dealtor.hpp               |     90 [31m-[m
 .../constructor_destructor_fn_imps.hpp            |    194 [31m-[m
 ...nstructor_destructor_no_store_hash_fn_imps.hpp |     58 [31m-[m
 .../constructor_destructor_store_hash_fn_imps.hpp |     59 [31m-[m
 .../detail/cc_hash_table_map_/debug_fn_imps.hpp   |     79 [31m-[m
 .../debug_no_store_hash_fn_imps.hpp               |     53 [31m-[m
 .../debug_store_hash_fn_imps.hpp                  |     57 [31m-[m
 .../cc_hash_table_map_/entry_list_fn_imps.hpp     |     94 [31m-[m
 .../detail/cc_hash_table_map_/erase_fn_imps.hpp   |    106 [31m-[m
 .../erase_no_store_hash_fn_imps.hpp               |    103 [31m-[m
 .../erase_store_hash_fn_imps.hpp                  |     97 [31m-[m
 .../detail/cc_hash_table_map_/find_fn_imps.hpp    |     74 [31m-[m
 .../find_store_hash_fn_imps.hpp                   |     41 [31m-[m
 .../detail/cc_hash_table_map_/info_fn_imps.hpp    |    104 [31m-[m
 .../detail/cc_hash_table_map_/insert_fn_imps.hpp  |     43 [31m-[m
 .../insert_no_store_hash_fn_imps.hpp              |     73 [31m-[m
 .../insert_store_hash_fn_imps.hpp                 |     74 [31m-[m
 .../cc_hash_table_map_/iterators_fn_imps.hpp      |     86 [31m-[m
 .../cc_hash_table_map_/policy_access_fn_imps.hpp  |     91 [31m-[m
 .../detail/cc_hash_table_map_/resize_fn_imps.hpp  |    137 [31m-[m
 .../resize_no_store_hash_fn_imps.hpp              |     57 [31m-[m
 .../resize_store_hash_fn_imps.hpp                 |     57 [31m-[m
 .../detail/cc_hash_table_map_/size_fn_imps.hpp    |     63 [31m-[m
 .../detail/cc_hash_table_map_/trace_fn_imps.hpp   |     75 [31m-[m
 .../include/c++/ext/pb_ds/detail/cond_dealtor.hpp |     86 [31m-[m
 .../ext/pb_ds/detail/container_base_dispatch.hpp  |    352 [31m-[m
 .../c++/ext/pb_ds/detail/debug_map_base.hpp       |    349 [31m-[m
 .../c++/ext/pb_ds/detail/eq_fn/eq_by_less.hpp     |     69 [31m-[m
 .../c++/ext/pb_ds/detail/eq_fn/hash_eq_fn.hpp     |    111 [31m-[m
 .../constructor_destructor_fn_imps.hpp            |    226 [31m-[m
 ...nstructor_destructor_no_store_hash_fn_imps.hpp |     56 [31m-[m
 .../constructor_destructor_store_hash_fn_imps.hpp |     57 [31m-[m
 .../detail/gp_hash_table_map_/debug_fn_imps.hpp   |     59 [31m-[m
 .../debug_no_store_hash_fn_imps.hpp               |     75 [31m-[m
 .../debug_store_hash_fn_imps.hpp                  |     81 [31m-[m
 .../detail/gp_hash_table_map_/erase_fn_imps.hpp   |    103 [31m-[m
 .../erase_no_store_hash_fn_imps.hpp               |     87 [31m-[m
 .../erase_store_hash_fn_imps.hpp                  |     88 [31m-[m
 .../detail/gp_hash_table_map_/find_fn_imps.hpp    |     73 [31m-[m
 .../find_no_store_hash_fn_imps.hpp                |     48 [31m-[m
 .../find_store_hash_fn_imps.hpp                   |     40 [31m-[m
 .../detail/gp_hash_table_map_/gp_ht_map_.hpp      |    714 [31m-[m
 .../detail/gp_hash_table_map_/info_fn_imps.hpp    |     62 [31m-[m
 .../detail/gp_hash_table_map_/insert_fn_imps.hpp  |     43 [31m-[m
 .../insert_no_store_hash_fn_imps.hpp              |    114 [31m-[m
 .../insert_store_hash_fn_imps.hpp                 |    121 [31m-[m
 .../gp_hash_table_map_/iterator_fn_imps.hpp       |     86 [31m-[m
 .../gp_hash_table_map_/policy_access_fn_imps.hpp  |    103 [31m-[m
 .../detail/gp_hash_table_map_/resize_fn_imps.hpp  |    142 [31m-[m
 .../resize_no_store_hash_fn_imps.hpp              |     75 [31m-[m
 .../resize_store_hash_fn_imps.hpp                 |     77 [31m-[m
 .../detail/gp_hash_table_map_/trace_fn_imps.hpp   |     77 [31m-[m
 .../hash_fn/direct_mask_range_hashing_imp.hpp     |     61 [31m-[m
 .../hash_fn/direct_mod_range_hashing_imp.hpp      |     61 [31m-[m
 .../pb_ds/detail/hash_fn/linear_probe_fn_imp.hpp  |     56 [31m-[m
 .../detail/hash_fn/mask_based_range_hashing.hpp   |    101 [31m-[m
 .../detail/hash_fn/mod_based_range_hashing.hpp    |     74 [31m-[m
 .../ext/pb_ds/detail/hash_fn/probe_fn_base.hpp    |     60 [31m-[m
 .../detail/hash_fn/quadratic_probe_fn_imp.hpp     |     56 [31m-[m
 .../ext/pb_ds/detail/hash_fn/ranged_hash_fn.hpp   |    360 [31m-[m
 .../ext/pb_ds/detail/hash_fn/ranged_probe_fn.hpp  |    327 [31m-[m
 .../ext/pb_ds/detail/hash_fn/sample_probe_fn.hpp  |     68 [31m-[m
 .../pb_ds/detail/hash_fn/sample_range_hashing.hpp |     74 [31m-[m
 .../detail/hash_fn/sample_ranged_hash_fn.hpp      |     75 [31m-[m
 .../detail/hash_fn/sample_ranged_probe_fn.hpp     |     77 [31m-[m
 .../const_iterator.hpp                            |    159 [31m-[m
 .../constructors_destructor_fn_imps.hpp           |    155 [31m-[m
 .../debug_fn_imps.hpp                             |    140 [31m-[m
 .../erase_fn_imps.hpp                             |    153 [31m-[m
 .../info_fn_imps.hpp                              |     68 [31m-[m
 .../insert_fn_imps.hpp                            |    178 [31m-[m
 .../iterators_fn_imps.hpp                         |     91 [31m-[m
 .../left_child_next_sibling_heap_.hpp             |    289 [31m-[m
 .../detail/left_child_next_sibling_heap_/node.hpp |     92 [31m-[m
 .../point_const_iterator.hpp                      |    139 [31m-[m
 .../policy_access_fn_imps.hpp                     |     55 [31m-[m
 .../trace_fn_imps.hpp                             |     93 [31m-[m
 .../constructor_destructor_fn_imps.hpp            |    139 [31m-[m
 .../detail/list_update_map_/debug_fn_imps.hpp     |     60 [31m-[m
 .../list_update_map_/entry_metadata_base.hpp      |     60 [31m-[m
 .../detail/list_update_map_/erase_fn_imps.hpp     |    137 [31m-[m
 .../detail/list_update_map_/find_fn_imps.hpp      |     93 [31m-[m
 .../detail/list_update_map_/info_fn_imps.hpp      |     61 [31m-[m
 .../detail/list_update_map_/insert_fn_imps.hpp    |    109 [31m-[m
 .../detail/list_update_map_/iterators_fn_imps.hpp |     83 [31m-[m
 .../ext/pb_ds/detail/list_update_map_/lu_map_.hpp |    345 [31m-[m
 .../detail/list_update_map_/trace_fn_imps.hpp     |     62 [31m-[m
 .../list_update_policy/lu_counter_metadata.hpp    |     87 [31m-[m
 .../list_update_policy/sample_update_policy.hpp   |     76 [31m-[m
 .../constructors_destructor_fn_imps.hpp           |    260 [31m-[m
 .../pb_ds/detail/ov_tree_map_/debug_fn_imps.hpp   |     82 [31m-[m
 .../pb_ds/detail/ov_tree_map_/erase_fn_imps.hpp   |    194 [31m-[m
 .../pb_ds/detail/ov_tree_map_/info_fn_imps.hpp    |     64 [31m-[m
 .../pb_ds/detail/ov_tree_map_/insert_fn_imps.hpp  |     66 [31m-[m
 .../detail/ov_tree_map_/iterators_fn_imps.hpp     |    106 [31m-[m
 .../pb_ds/detail/ov_tree_map_/node_iterators.hpp  |    278 [31m-[m
 .../pb_ds/detail/ov_tree_map_/ov_tree_map_.hpp    |    544 [31m-[m
 .../detail/ov_tree_map_/policy_access_fn_imps.hpp |     54 [31m-[m
 .../detail/ov_tree_map_/split_join_fn_imps.hpp    |    135 [31m-[m
 .../c++/ext/pb_ds/detail/ov_tree_map_/traits.hpp  |    190 [31m-[m
 .../constructors_destructor_fn_imps.hpp           |     85 [31m-[m
 .../pb_ds/detail/pairing_heap_/debug_fn_imps.hpp  |     56 [31m-[m
 .../pb_ds/detail/pairing_heap_/erase_fn_imps.hpp  |    236 [31m-[m
 .../pb_ds/detail/pairing_heap_/find_fn_imps.hpp   |     52 [31m-[m
 .../pb_ds/detail/pairing_heap_/insert_fn_imps.hpp |     91 [31m-[m
 .../pb_ds/detail/pairing_heap_/pairing_heap_.hpp  |    185 [31m-[m
 .../detail/pairing_heap_/split_join_fn_imps.hpp   |    126 [31m-[m
 .../pat_trie_/constructors_destructor_fn_imps.hpp |    217 [31m-[m
 .../ext/pb_ds/detail/pat_trie_/debug_fn_imps.hpp  |    118 [31m-[m
 .../ext/pb_ds/detail/pat_trie_/erase_fn_imps.hpp  |    318 [31m-[m
 .../ext/pb_ds/detail/pat_trie_/find_fn_imps.hpp   |    272 [31m-[m
 .../ext/pb_ds/detail/pat_trie_/info_fn_imps.hpp   |     62 [31m-[m
 .../detail/pat_trie_/insert_join_fn_imps.hpp      |    475 [31m-[m
 .../pb_ds/detail/pat_trie_/iterators_fn_imps.hpp  |    123 [31m-[m
 .../c++/ext/pb_ds/detail/pat_trie_/pat_trie_.hpp  |    596 [31m-[m
 .../ext/pb_ds/detail/pat_trie_/pat_trie_base.hpp  |   1351 [31m-[m
 .../detail/pat_trie_/policy_access_fn_imps.hpp    |     66 [31m-[m
 .../pb_ds/detail/pat_trie_/r_erase_fn_imps.hpp    |    106 [31m-[m
 .../ext/pb_ds/detail/pat_trie_/rotate_fn_imps.hpp |    153 [31m-[m
 .../ext/pb_ds/detail/pat_trie_/split_fn_imps.hpp  |    253 [31m-[m
 .../detail/pat_trie_/synth_access_traits.hpp      |    218 [31m-[m
 .../ext/pb_ds/detail/pat_trie_/trace_fn_imps.hpp  |    114 [31m-[m
 .../c++/ext/pb_ds/detail/pat_trie_/traits.hpp     |    148 [31m-[m
 .../ext/pb_ds/detail/pat_trie_/update_fn_imps.hpp |     58 [31m-[m
 .../pb_ds/detail/priority_queue_base_dispatch.hpp |    120 [31m-[m
 .../constructors_destructor_fn_imps.hpp           |    103 [31m-[m
 .../pb_ds/detail/rb_tree_map_/debug_fn_imps.hpp   |     84 [31m-[m
 .../pb_ds/detail/rb_tree_map_/erase_fn_imps.hpp   |    292 [31m-[m
 .../pb_ds/detail/rb_tree_map_/find_fn_imps.hpp    |     39 [31m-[m
 .../pb_ds/detail/rb_tree_map_/info_fn_imps.hpp    |     49 [31m-[m
 .../pb_ds/detail/rb_tree_map_/insert_fn_imps.hpp  |    118 [31m-[m
 .../c++/ext/pb_ds/detail/rb_tree_map_/node.hpp    |    125 [31m-[m
 .../ext/pb_ds/detail/rb_tree_map_/rb_tree_.hpp    |    248 [31m-[m
 .../detail/rb_tree_map_/split_join_fn_imps.hpp    |    309 [31m-[m
 .../c++/ext/pb_ds/detail/rb_tree_map_/traits.hpp  |    102 [31m-[m
 .../constructors_destructor_fn_imps.hpp           |     87 [31m-[m
 .../detail/rc_binomial_heap_/debug_fn_imps.hpp    |    124 [31m-[m
 .../detail/rc_binomial_heap_/erase_fn_imps.hpp    |    110 [31m-[m
 .../detail/rc_binomial_heap_/insert_fn_imps.hpp   |    157 [31m-[m
 .../c++/ext/pb_ds/detail/rc_binomial_heap_/rc.hpp |    240 [31m-[m
 .../rc_binomial_heap_/rc_binomial_heap_.hpp       |    171 [31m-[m
 .../rc_binomial_heap_/split_join_fn_imps.hpp      |     80 [31m-[m
 .../detail/rc_binomial_heap_/trace_fn_imps.hpp    |     55 [31m-[m
 ...ash_max_collision_check_resize_trigger_imp.hpp |    214 [31m-[m
 .../hash_exponential_size_policy_imp.hpp          |     93 [31m-[m
 .../hash_load_check_resize_trigger_imp.hpp        |    296 [31m-[m
 .../hash_load_check_resize_trigger_size_base.hpp  |     94 [31m-[m
 .../resize_policy/hash_prime_size_policy_imp.hpp  |    181 [31m-[m
 .../hash_standard_resize_policy_imp.hpp           |    252 [31m-[m
 .../detail/resize_policy/sample_resize_policy.hpp |    125 [31m-[m
 .../resize_policy/sample_resize_trigger.hpp       |    136 [31m-[m
 .../detail/resize_policy/sample_size_policy.hpp   |     73 [31m-[m
 .../constructors_destructor_fn_imps.hpp           |    105 [31m-[m
 .../pb_ds/detail/splay_tree_/debug_fn_imps.hpp    |     78 [31m-[m
 .../pb_ds/detail/splay_tree_/erase_fn_imps.hpp    |    160 [31m-[m
 .../ext/pb_ds/detail/splay_tree_/find_fn_imps.hpp |    103 [31m-[m
 .../ext/pb_ds/detail/splay_tree_/info_fn_imps.hpp |     39 [31m-[m
 .../pb_ds/detail/splay_tree_/insert_fn_imps.hpp   |     97 [31m-[m
 .../c++/ext/pb_ds/detail/splay_tree_/node.hpp     |    120 [31m-[m
 .../pb_ds/detail/splay_tree_/splay_fn_imps.hpp    |    284 [31m-[m
 .../ext/pb_ds/detail/splay_tree_/splay_tree_.hpp  |    275 [31m-[m
 .../detail/splay_tree_/split_join_fn_imps.hpp     |    115 [31m-[m
 .../c++/ext/pb_ds/detail/splay_tree_/traits.hpp   |     95 [31m-[m
 .../c++/ext/pb_ds/detail/standard_policies.hpp    |    158 [31m-[m
 .../constructors_destructor_fn_imps.hpp           |    108 [31m-[m
 .../ext/pb_ds/detail/thin_heap_/debug_fn_imps.hpp |    122 [31m-[m
 .../ext/pb_ds/detail/thin_heap_/erase_fn_imps.hpp |    258 [31m-[m
 .../ext/pb_ds/detail/thin_heap_/find_fn_imps.hpp  |     54 [31m-[m
 .../pb_ds/detail/thin_heap_/insert_fn_imps.hpp    |    283 [31m-[m
 .../detail/thin_heap_/split_join_fn_imps.hpp      |    111 [31m-[m
 .../ext/pb_ds/detail/thin_heap_/thin_heap_.hpp    |    333 [31m-[m
 .../ext/pb_ds/detail/thin_heap_/trace_fn_imps.hpp |     56 [31m-[m
 .../detail/tree_policy/node_metadata_selector.hpp |    103 [31m-[m
 .../detail/tree_policy/order_statistics_imp.hpp   |    124 [31m-[m
 .../tree_policy/sample_tree_node_update.hpp       |     62 [31m-[m
 .../c++/ext/pb_ds/detail/tree_trace_base.hpp      |    179 [31m-[m
 .../detail/trie_policy/node_metadata_selector.hpp |    103 [31m-[m
 .../detail/trie_policy/order_statistics_imp.hpp   |    163 [31m-[m
 .../trie_policy/prefix_search_node_update_imp.hpp |    142 [31m-[m
 .../trie_policy/sample_trie_access_traits.hpp     |     77 [31m-[m
 .../trie_policy/sample_trie_node_update.hpp       |     64 [31m-[m
 .../pb_ds/detail/trie_policy/trie_policy_base.hpp |    207 [31m-[m
 .../trie_policy/trie_string_access_traits_imp.hpp |    102 [31m-[m
 .../include/c++/ext/pb_ds/detail/type_utils.hpp   |    168 [31m-[m
 .../include/c++/ext/pb_ds/detail/types_traits.hpp |    198 [31m-[m
 .../detail/unordered_iterator/const_iterator.hpp  |    116 [31m-[m
 .../pb_ds/detail/unordered_iterator/iterator.hpp  |    135 [31m-[m
 .../unordered_iterator/point_const_iterator.hpp   |    137 [31m-[m
 .../detail/unordered_iterator/point_iterator.hpp  |    131 [31m-[m
 .../15.1.0/include/c++/ext/pb_ds/exception.hpp    |     93 [31m-[m
 .../15.1.0/include/c++/ext/pb_ds/hash_policy.hpp  |    617 [31m-[m
 .../include/c++/ext/pb_ds/list_update_policy.hpp  |    129 [31m-[m
 .../include/c++/ext/pb_ds/priority_queue.hpp      |    157 [31m-[m
 .../include/c++/ext/pb_ds/tag_and_trait.hpp       |    454 [31m-[m
 .../15.1.0/include/c++/ext/pb_ds/tree_policy.hpp  |    157 [31m-[m
 .../15.1.0/include/c++/ext/pb_ds/trie_policy.hpp  |    360 [31m-[m
 .../15.1.0/include/c++/ext/pod_char_traits.h      |    202 [31m-[m
 .../15.1.0/include/c++/ext/pointer.h              |    617 [31m-[m
 .../15.1.0/include/c++/ext/pool_allocator.h       |    300 [31m-[m
 .../15.1.0/include/c++/ext/random                 |   3932 [31m-[m
 .../15.1.0/include/c++/ext/random.tcc             |   1857 [31m-[m
 .../15.1.0/include/c++/ext/rb_tree                |     97 [31m-[m
 .../15.1.0/include/c++/ext/rc_string_base.h       |    738 [31m-[m
 .../15.1.0/include/c++/ext/rope                   |   3022 [31m-[m
 .../15.1.0/include/c++/ext/ropeimpl.h             |   1712 [31m-[m
 .../15.1.0/include/c++/ext/slist                  |   1084 [31m-[m
 .../15.1.0/include/c++/ext/sso_string_base.h      |    582 [31m-[m
 .../15.1.0/include/c++/ext/stdio_filebuf.h        |    175 [31m-[m
 .../15.1.0/include/c++/ext/stdio_sync_filebuf.h   |    325 [31m-[m
 .../15.1.0/include/c++/ext/string_conversions.h   |    127 [31m-[m
 .../15.1.0/include/c++/ext/throw_allocator.h      |   1018 [31m-[m
 .../15.1.0/include/c++/ext/type_traits.h          |    280 [31m-[m
 .../15.1.0/include/c++/ext/typelist.h             |    538 [31m-[m
 .../15.1.0/include/c++/ext/vstring.h              |   2964 [31m-[m
 .../15.1.0/include/c++/ext/vstring.tcc            |    706 [31m-[m
 .../15.1.0/include/c++/ext/vstring_fwd.h          |     88 [31m-[m
 .../15.1.0/include/c++/ext/vstring_util.h         |    190 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/fenv.h  |     88 [31m-[m
 .../15.1.0/include/c++/filesystem                 |     60 [31m-[m
 .../15.1.0/include/c++/flat_map                   |   1577 [31m-[m
 .../15.1.0/include/c++/flat_set                   |   1075 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/format  |   5798 [31m-[m
 .../15.1.0/include/c++/forward_list               |     99 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/fstream |   1374 [31m-[m
 .../15.1.0/include/c++/functional                 |   1507 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/future  |   1860 [31m-[m
 .../15.1.0/include/c++/generator                  |    825 [31m-[m
 .../15.1.0/include/c++/initializer_list           |    107 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/iomanip |    552 [31m-[m
 .../gcc/x86_64-w64-mingw32/15.1.0/include/c++/ios |     53 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/iosfwd  |    260 [31m-[m
 .../15.1.0/include/c++/iostream                   |     90 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/istream |   1113 [31m-[m
 .../15.1.0/include/c++/iterator                   |     86 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/latch   |    110 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/limits  |   2240 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/list    |    121 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/locale  |     50 [31m-[m
 .../gcc/x86_64-w64-mingw32/15.1.0/include/c++/map |    129 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/math.h  |    187 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/memory  |    177 [31m-[m
 .../15.1.0/include/c++/memory_resource            |    479 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/mutex   |   1028 [31m-[m
 .../gcc/x86_64-w64-mingw32/15.1.0/include/c++/new |    269 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/numbers |    243 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/numeric |    782 [31m-[m
 .../15.1.0/include/c++/optional                   |   1782 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/ostream |    296 [31m-[m
 .../15.1.0/include/c++/parallel/algo.h            |   2162 [31m-[m
 .../15.1.0/include/c++/parallel/algobase.h        |    536 [31m-[m
 .../15.1.0/include/c++/parallel/algorithm         |     41 [31m-[m
 .../15.1.0/include/c++/parallel/algorithmfwd.h    |    915 [31m-[m
 .../include/c++/parallel/balanced_quicksort.h     |    495 [31m-[m
 .../15.1.0/include/c++/parallel/base.h            |    435 [31m-[m
 .../15.1.0/include/c++/parallel/basic_iterator.h  |     41 [31m-[m
 .../15.1.0/include/c++/parallel/checkers.h        |     71 [31m-[m
 .../15.1.0/include/c++/parallel/compatibility.h   |    131 [31m-[m
 .../include/c++/parallel/compiletime_settings.h   |     75 [31m-[m
 .../15.1.0/include/c++/parallel/equally_split.h   |     89 [31m-[m
 .../15.1.0/include/c++/parallel/features.h        |    104 [31m-[m
 .../15.1.0/include/c++/parallel/find.h            |    405 [31m-[m
 .../15.1.0/include/c++/parallel/find_selectors.h  |    197 [31m-[m
 .../15.1.0/include/c++/parallel/for_each.h        |     90 [31m-[m
 .../include/c++/parallel/for_each_selectors.h     |    349 [31m-[m
 .../15.1.0/include/c++/parallel/iterator.h        |    198 [31m-[m
 .../15.1.0/include/c++/parallel/list_partition.h  |    179 [31m-[m
 .../15.1.0/include/c++/parallel/losertree.h       |   1063 [31m-[m
 .../15.1.0/include/c++/parallel/merge.h           |    251 [31m-[m
 .../include/c++/parallel/multiseq_selection.h     |    653 [31m-[m
 .../15.1.0/include/c++/parallel/multiway_merge.h  |   2072 [31m-[m
 .../include/c++/parallel/multiway_mergesort.h     |    480 [31m-[m
 .../15.1.0/include/c++/parallel/numeric           |    511 [31m-[m
 .../15.1.0/include/c++/parallel/numericfwd.h      |    205 [31m-[m
 .../15.1.0/include/c++/parallel/omp_loop.h        |    115 [31m-[m
 .../15.1.0/include/c++/parallel/omp_loop_static.h |    115 [31m-[m
 .../15.1.0/include/c++/parallel/par_loop.h        |    139 [31m-[m
 .../15.1.0/include/c++/parallel/parallel.h        |     42 [31m-[m
 .../15.1.0/include/c++/parallel/partial_sum.h     |    230 [31m-[m
 .../15.1.0/include/c++/parallel/partition.h       |    434 [31m-[m
 .../15.1.0/include/c++/parallel/queue.h           |    155 [31m-[m
 .../15.1.0/include/c++/parallel/quicksort.h       |    179 [31m-[m
 .../15.1.0/include/c++/parallel/random_number.h   |    130 [31m-[m
 .../15.1.0/include/c++/parallel/random_shuffle.h  |    533 [31m-[m
 .../15.1.0/include/c++/parallel/search.h          |    172 [31m-[m
 .../15.1.0/include/c++/parallel/set_operations.h  |    529 [31m-[m
 .../15.1.0/include/c++/parallel/settings.h        |    347 [31m-[m
 .../15.1.0/include/c++/parallel/sort.h            |    238 [31m-[m
 .../15.1.0/include/c++/parallel/tags.h            |    185 [31m-[m
 .../15.1.0/include/c++/parallel/types.h           |    137 [31m-[m
 .../15.1.0/include/c++/parallel/unique_copy.h     |    197 [31m-[m
 .../15.1.0/include/c++/parallel/workstealing.h    |    312 [31m-[m
 .../x86_64-w64-mingw32/15.1.0/include/c++/print   |    158 [31m-[m
 .../15.1.0/include/c++/pstl/algorithm_fwd.h       |   1195 [31m-[m
 .../15.1.0/include/c++/pstl/algorithm_impl.h      |   3818 [31m-[m
 .../15.1.0/include/c++/pstl/execution_defs.h      |    100 [31m-[m
 .../15.1.0/include/c++/pstl/execution_impl.h      |    111 [31m-[m
 .../15.1.0/include/c++/pstl/glue_algorithm_defs.h |    552 [31m-[m
 .../15.1.0/include/c++/pstl/glue_algorithm_impl.h |   1100 [31m-[m
 .../15.1.0/include/c++/pstl/glue_execution_defs.h |     54 [31m-[m
 .../15.1.0/include/c++/pstl/glue_memory_defs.h    |     79 [31m-[m
 .../15.1.0/include/c