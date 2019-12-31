#!/bin/bash
~/anaconda3/bin/jupyter nbconvert --execute --to notebook --ExecutePreprocessor.timeout=-1 --inplace ./6_genomic_feature_convergence.ipynb
~/anaconda3/bin/jupyter nbconvert --execute --to notebook --ExecutePreprocessor.timeout=-1 --inplace ./7_genetic_convergence.ipynb
~/anaconda3/bin/jupyter nbconvert --execute --to notebook --ExecutePreprocessor.timeout=-1 --inplace ./8_operon_convergence.ipynb
# ~/anaconda3/bin/jupyter nbconvert --execute --to notebook --ExecutePreprocessor.timeout=-1 --inplace ./9_imodulon_annot.ipynb
~/anaconda3/bin/jupyter nbconvert --execute --to notebook --ExecutePreprocessor.timeout=-1 --inplace ./10_COG_convergence.ipynb
~/anaconda3/bin/jupyter nbconvert --execute --to notebook --ExecutePreprocessor.timeout=-1 --inplace ./11_regulon_convergence.ipynb
~/anaconda3/bin/jupyter nbconvert --execute --to notebook --ExecutePreprocessor.timeout=-1 --inplace ./12_pathway_convergence.ipynb
~/anaconda3/bin/python archive_exp_converg_data.py
