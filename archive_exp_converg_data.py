#!/usr/bin/env python3


import pandas as pd

# Archive the completely populated dataframe.
proj_muts_df = pd.read_pickle("./data/12_df.pkl")
exp_name = proj_muts_df["exp"].unique()[0]
pkl_name = exp_name + "_df.pkl"
print("archiving", pkl_name)
proj_muts_df.to_pickle("./data/"+pkl_name)
