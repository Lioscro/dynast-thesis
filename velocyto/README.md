# Splicing validation and benchmarks

## Preparation

1. [`download.sh`](./download.sh): Download all required files to the `data` directory.
2. [`setup.sh`](./setup.sh): Set up dependencies and files.
3. [`build_STAR_index.sh`](./build_STAR_index.sh): Build STAR index using the reference genome downloaded in Step 1.
4. [`dynast_align_all.sh`](./dynast_align_all.sh): Run `dynast align` for all samples. Note that this is a shared step because Velocyto requires an aligned BAM.

## Dynast
[`dynast_count_all.sh`](./dynast_count_all.sh): Run `dynast count` for all samples.

## Velocyto
[`velocyto_run_all.sh`](./velocyto_run_all.sh): Run Velocyto for all samples.

## Analyses
* [`validation.ipynb`](./validation.ipynb): Validation of Dynast against Velocyto.
* [`benchmark.ipynb`](./benchmark.ipynb): Benchmarking of Dynast against Velocyto.
