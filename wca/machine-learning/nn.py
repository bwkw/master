"""
ニューラルネットワークにより、WCAポテンシャルの関数の形を推定してみよう
"""

# モジュールのimport
import numpy as np
import matplotlib.pyplot as plt
import tensorflow as tf
from tensorflow import keras


# データを読み込む(x=density, y=pressure)
x = np.load("density_d0.01-15.0-0.01.npy")
y = np.load("pressure_d0.01-15.0-0.01.npy")


#モデルの作成
def create_model():
    model = keras.Sequential([
        keras.layers.Dense(128, activation="sigmoid", dtype='float64'),
        keras.layers.Dense(128, activation="sigmoid", dtype='float64'),
        keras.layers.Dense(128, activation="sigmoid", dtype='float64'),
        keras.layers.Dense(1, dtype='float64')
    ])
    model.compile(optimizer='adam',
                  loss="mean_squared_error",
                  metrics=['mse'])
    return model

model = create_model()


# numpy配列として読み込んだデータをリストにし、x,yの先頭に(0, 0)を挿入
train_datas = x.tolist()
train_labels = y.tolist()
train_datas.insert(0,0)
train_labels.insert(0,0)


pressure_max = max(train_labels)
train_labels = [i/pressure_max for i in train_labels]


#学習段階
model.fit(
    train_datas, train_labels, epochs=100
)


#テスト段階
test_datas = []
for i in range(76):
    test_data = i/5
    test_datas.append(test_data)
test_predictions=model.predict(test_datas)


#訓練したモデルにpredictさせたものと正しいデータの比較
fig = plt.figure()
plt.plot(train_datas, train_labels, color="blue", marker="o", label="training")
plt.plot(test_datas, test_predictions, color="red", marker="v", label="funapp")
plt.legend()
plt.title("Function approximation accuracy")
fig.savefig("img/Function_approximation_accuracy.png")