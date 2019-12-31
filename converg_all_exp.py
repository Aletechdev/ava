import pandas as pd
import subprocess

all_muts_df = pd.read_pickle("./data/4_7_df.pkl")  # The all experiment mutations DF just before filtering.

for exp_name in all_muts_df.exp.unique():
    if "ltee" not in exp_name.lower():
        muts_df = all_muts_df[all_muts_df["exp"] == exp_name]
        muts_df.to_pickle("./data/5_df.pkl")
        print(muts_df.exp.unique())
        cmd = ['./exp_converge.sh']
        p = subprocess.Popen(cmd, stdout=subprocess.PIPE)
        p.wait()
