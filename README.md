# hicod
Hierarchical Indexing for COmpacted De bruijn graphs

<!-- Description of repo layout (how is your repo organized, what lives in each folder?).
How was your testing done, which scripts (or notebooks etc.) are responsible for your testing?
What is the provenance of the data you used for testing — either pointers to scripts to download this data or detailed lists of the exact files you used and where they came from.
Versions of the relevant software that you used in your project. -->
## Layout
The `scripts/setup folder` includes scripts for installing the necessary software, and scripts used elsewhere for constructing indices.

The `scripts/bulid_concat_hisat` folder includes scripts for building the concatenated version of the HiCoD index from unitigs output by Cuttlefish

The `scripts/build_raw_hisat` folder includes scripts for building the raw version of the HiCoD index from unitigs output by Cuttlefish

The `scripts/get_perf` folder includes scripts for grabbing performance metrics such as memory used, index size, and time to build for all versions of HiCoD


## Data Provenance
We use the same data as that used in SSHash, and download from the same links, scripts for such are in scripts/setup

## Software Version
hisat-0.1.6-beta
python 3+
cuttlefish 2.0
