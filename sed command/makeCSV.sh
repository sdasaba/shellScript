# ファイルまとめる
cat *set1*.csv > set_all.csv

# 不要文字削除
sed -i -e "/first/d" -e "/finish/d" ./set_all.csv

# 計算のために文字変換
sed -i -e "s/,/ /g" ./set_all.csv

# 最大値
echo Maximum
cat ./set_all.csv | awk '{if(m<$4) m=$4} END{print m}' 

# 最小値
echo minimum
cat ./set_all.csv | awk 'BEGIN{m=100000}{if(m>$4) m=$4} END{print m}'

# 平均値
echo aver
cat ./set_all.csv | awk '{m+=$4} END{print m/NR}'