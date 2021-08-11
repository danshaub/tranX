#!/bin/bash

model_name=$(basename $1)

python exp.py \
        --mode test \
    --load_model $1 \
    --beam_size 5 \
    --test_file data/geo/test.bin \
    --decode_max_time_step 110
