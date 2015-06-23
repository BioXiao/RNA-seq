#!/bin/bash

sample=(2D0 2D5 2D5N 2D10 2D10N 2D20R 2D25 8D0 8D5 8D5N 8D10 8D10N 8D20R 8D25)
for var in ${esc8[@]} 
     do 
      qsub -pe shared 4 -l h_data=4G,h_rt=5:00:00,highp ~/data/samtools.sh samtools sort ./${var}_Aligned.out.bam ./${var}_Aligned.out.sorted
done

