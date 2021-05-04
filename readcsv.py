import pandas as pd


def get_data(filename):
    data_df = pd.read_csv(filename+".csv")
    return data_df