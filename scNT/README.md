# Metabolic labeling validation and benchmarks

## Preparation

1. [`download.sh`](./download.sh): Download all required files to the `data` directory.
2. [`setup.sh`](./setup.sh): Set up dependencies and files.
3. [`build_STAR_index.sh`](./build_STAR_index.sh): Build STAR index using the reference genome downloaded in Step 1.

## Dynast
1. [`dynast_align_all.sh`](./dynast_align_all.sh): Run `dynast align` for all samples.
2. [`dynast_consensus_all.sh`](./dynast_consensus_all.sh): Run `dynast consensus` for all samples.
3. [`dynast_count_all.sh`](./dynast_count_all.sh): Run `dynast count` for all samples.

## scNT-seq pipeline
1. [`scNT_Step1_all.sh`](./scNT_Step1_all.sh): Run Step1 of scNT-seq pipeline for all samples.
2. [`scNT_Step2_all.sh`](./scNT_Step2_all.sh): Run Step2 of scNT-seq pipeline for all samples.
3. [`scNT_Step3_all.sh`](./scNT_Step3_all.sh): Run Step3 of scNT-seq pipeline for all samples.
4. [`scNT_Step4_all.sh`](./scNT_Step4_all.sh): Run Step4 of scNT-seq pipeline for all samples.
5. [`scNT_to_adata_all.sh`](./scNT_to_adata_all.sh): Convert scNT-seq pipeline output to AnnData for all samples.

## Analyses
* [`validation.ipynb`](./validation.ipynb): Validation of Dynast against scNT-seq pipeline.
* [`benchmark.ipynb`](./benchmark.ipynb): Benchmarking of Dynast against scNT-seq pipeline.
