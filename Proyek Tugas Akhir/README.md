# Deteksi Penipuan pada Transaksi Kartu Kredit
## Deep Learning Berbasis Gated RNN (LSTM dan GRU)

Repository ini berisi implementasi Final Project untuk mendeteksi transaksi kartu kredit yang terindikasi sebagai transaksi penipuan (_fraud_) menggunakan metode _Deep Learning_ berbasis _Gated Recurrent Neural Network_, dengan membandingkan arsitektur _Long Short-Term Memory_ (LSTM), _Gated Recurrent Unit_ (GRU), beserta kedua arahnya (_Bidirectional_).

📌 **Tentang Proyek**

Penipuan pada transaksi kartu kredit merupakan salah satu permasalahan dalam sistem pembayaran digital. Salah satu pendekatan yang dapat digunakan untuk mendeteksi transaksi penipuan adalah dengan memanfaatkan metode _Deep Learning._

Pada proyek ini, model LSTM dan GRU digunakan untuk melakukan klasifikasi transaksi kartu kredit ke dalam dua kelas:
1. 0 — Transaksi Sah
2. 1 — Transaksi Penipuan (_Fraud_)

Performa kedua model kemudian dianalisis menggunakan beberapa metrik evaluasi seperti Recall dan F1-Score untuk mengetahui kemampuan model dalam mendeteksi transaksi penipuan.

📊 **Dataset**

Dataset yang digunakan merupakan dataset transaksi kartu kredit yang memiliki label untuk membedakan transaksi sah dan transaksi penipuan.

Dataset: Credit Card Transactions Fraud Detection

Sumber: https://www.kaggle.com/datasets/kartik2112/fraud-detection

Dataset digunakan untuk proses data preprocessing, pelatihan model, dan evaluasi performa model.

🛠️ **Teknologi dan Library**

Proyek ini dikembangkan menggunakan Python dan Google Colab. Beberapa library yang digunakan:
- Python
- NumPy
- Pandas
- Matplotlib
- Seaborn
- Scikit-learn
- TensorFlow / Keras
