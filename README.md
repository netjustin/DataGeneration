# DataGeneration

generate_random_file.sh
=======================
Quick and dirty random data generator for bash/python3. The idea is to use this for testing data transfer speeds, without throughput increases due to compression efficiencies. The output file size is the product of `n` and `unit_size`, by default 1 MB. `unit_size` sets quantity bytes to be psuedo-randonmly generated, and remaining data duplicates the first `unit_size` bytes.

example usage:

    user@deb8:~$ chmod ugo+x generate_random_file.sh
    user@deb8:~$ ./generate_random_file.sh 
    user@deb8:~$ ll random
    -rw-r--r-- 1 user user 1048576 Sep  3 22:34 random
    user@deb8:~$ hexdump random | head 
    0000000 f0ae c3c8 e823 5804 35d4 53ca 77bb 3756
    0000010 9be4 a7d8 6d3b 912e dd4d 4269 38df af26
    0000020 4c18 9f94 a275 e2b7 0047 e8ba 21dd fbe6
    0000030 f778 a6d8 591a 1122 3060 d42c cd72 f019
    0000040 90ab 4bde 5063 7f59 73eb 6880 78e4 8a7a
    0000050 d190 ae48 ce8b 4ec0 7aa7 e030 4477 76de
    0000060 f945 762b 966f a017 85d5 c9b6 56bd 00b7
    0000070 4bde 34df 7917 2853 1575 834b e65e 0515
    0000080 d28b 0ead e5c3 8b2d e26b 1123 d0bf ae1f
    0000090 2017 8437 cad4 b77a 001a 1d10 77bf 6905
    user@deb8:~$
