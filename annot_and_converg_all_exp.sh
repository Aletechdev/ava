#!/bin/bash
sh ./aledb_parse_annot_assoc.sh
# TODO: put the get_*_lengths.df into make_all_AVA_data_dfs.ipynb
~/anaconda3/bin/jupyter nbconvert --execute --to notebook --ExecutePreprocessor.timeout=-1 --inplace ./get_pathway_lengths.ipynb
~/anaconda3/bin/jupyter nbconvert --execute --to notebook --ExecutePreprocessor.timeout=-1 --inplace ./get_regulon_lengths.ipynb
~/anaconda3/bin/jupyter nbconvert --execute --to notebook --ExecutePreprocessor.timeout=-1 --inplace ./get_COG_lengths.ipynb
~/anaconda3/bin/python3 converg_all_exp.py
