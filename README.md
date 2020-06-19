# README

This sandbox repo is to isolate a issue with snakemake and the
slurm scheduler.

## Issue

I am relatively new to snakemake so I may be doing something wrong.
When I am running my pipeline in snakemake with a slurm cluster the jobs
are killed due to memory limits but snakemake seems to be stuck, waiting
for the job to finish. I would have sweared this worked yesterday so maybe
something in my system changed (?).

I made a minimal example in this [repo](https://github.com/davidmasp/snakemake-sandbox).

To reprodcuce I use:

```
snakemake --jobs 1 --cluster "sbatch --mem=1G" all
```

The job is killed due to memory limits in around 10 secs but snakemake does
not see it. I think it might be related to #134.

If it is indeed something specific to my system, what should I look for?

## Solution


