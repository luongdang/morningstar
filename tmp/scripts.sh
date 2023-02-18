#!/bin/bash

image_name=luongdang/morningstar-timeoff-management:1.4.3
docker image build -t $image_name .

docker run -dp 3000:3000 --rm --name timeoff-management $image_name

/root/.npm/_logs/2023-02-17T18_23_51_231Z-debug-0.log
alias ll="ls -l --color"