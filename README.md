# DataGeneration

generate_random_file.sh
=======================
Quick and dirty random data generator for bash/python3. The idea is to use this for testing data transfer speeds, without throughput increases due to compression efficiencies. The output file size (default 1 MB ) is the product of n and unit_size--n is a multiplier. unit_size sets quantity bytes to be psuedo-randonmly generated, and remainder duplicate the first.
