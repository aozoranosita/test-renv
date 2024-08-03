renv::restore()

renv::init()
renv::snapshot()
# 必要なライブラリを読み込みます

library(ggplot2)

# if R is working, this will work without any additional packages
# サンプルデータを生成します
set.seed(123)  # 再現性のために乱数の種を設定します
n <- 100  # データポイントの数
x <- rnorm(n, mean = 0, sd = 1)  # 平均0、標準偏差1の正規分布に従うn個のサンプル
y <- 2 * x + rnorm(n, mean = 0, sd = 1)  # xに比例し、ランダムなノイズを加えたy

# データフレームにまとめます
data <- data.frame(x = x, y = y)

# 散布図を描きます
ggplot(data, aes(x = x, y = y)) +
  geom_point(color = 'blue', size = 2) +
  labs(title = "散布図",
       x = "xの値",
       y = "yの値") +
  theme_minimal()

# use tidyverse, for checking renv packages load
library(tidyverse)
# mtcarsデータセットの先頭6行を表示
head(mtcars)

# データの概要を表示
summary(mtcars)

# dplyrを使ったデータ操作
# 1. mpg (燃費) が20以上の車をフィルタリング
# 2. hp (馬力) の降順にソート
# 3. mpg, hp, wt (重量) のみを選択
filtered_data <- mtcars %>%
  filter(mpg >= 20) %>%
  arrange(desc(hp)) %>%
  select(mpg, hp, wt)

# フィルタリング結果を表示
print(filtered_data)

# ggplot2を使ったデータ可視化
# mpg (燃費) と wt (重量) の関係を散布図で表示
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() + # データポイントをプロット
  geom_smooth(method = "lm", col = "blue") + # 回帰直線を追加
  labs(title = "Weight vs. MPG",
       x = "Weight (1000 lbs)",
       y = "Miles per Gallon (MPG)") +
  theme_minimal() # ミニマルテーマを適用

