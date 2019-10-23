import pandas as pd

# csv読み込み
df =pd.read_csv("test2.csv",sep=",")
df.columns = ["datetime","id","value"]
print(df.tail())