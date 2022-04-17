library("openxlsx")
library("C50")

# Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating)

# Menggunakan C5.0
drop_columns <- c("kpr_aktif", "pendapatan_setahun_juta", "risk_rating", "rata_rata_overdue")
datafeed <- dataCreditRating[, !(names(dataCreditRating) %in% drop_columns)]
modelKu <- C5.0(datafeed, as.factor(dataCreditRating$risk_rating))
summary(modelKu)

library("openxlsx")

# Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")
str(dataCreditRating)

# Melakukan konversi kolom risk_rating menjadi factor
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating)

# Melihat struktur setelah konversi
str(dataCreditRating)

library("openxlsx")

# Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")

# Merubah tipe data class variable sebagai factor
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating)
str(dataCreditRating)

# Menghilangkan beberapa variable input dari dataset
input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
datafeed <- dataCreditRating[, input_columns]
str(datafeed)

library("openxlsx")

# Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")

# Mempersiapkan class dan input variables
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating)
input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
datafeed <- dataCreditRating[, input_columns]

# Mempersiapkan porsi index acak untuk training dan testing set
set.seed(100)
indeks_training_set <- sample(900, 800)

# Membuat dan menampilkan training set dan testing set
input_training_set <- datafeed[indeks_training_set, ]
class_training_set <- dataCreditRating[indeks_training_set, ]$risk_rating
input_testing_set <- datafeed[-indeks_training_set, ]

str(input_training_set)
str(class_training_set)
str(input_testing_set)

library("openxlsx")
library("C50")

# Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")

# Mempersiapkan class dan input variables
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating)
input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
datafeed <- dataCreditRating[, input_columns]

# Mempersiapkan training dan testing set
set.seed(100) # untuk menyeragamkan hasil random antar tiap komputer
indeks_training_set <- sample(900, 800)

# Membuat dan menampilkan training set dan testing set
input_training_set <- datafeed[indeks_training_set, ]
class_training_set <- dataCreditRating[indeks_training_set, ]$risk_rating
input_testing_set <- datafeed[-indeks_training_set, ]

# menghasilkan dan menampilkan summary model
risk_rating_model <- C5.0(input_training_set, class_training_set)
summary(risk_rating_model)

library("openxlsx")
library("C50")

# Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")

# Mempersiapkan class dan input variables
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating)
input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
datafeed <- dataCreditRating[, input_columns]

# Mempersiapkan training dan testing set
set.seed(100) # untuk menyeragamkan hasil random antar tiap komputer
indeks_training_set <- sample(900, 800)

# Membuat dan menampilkan training set dan testing set
input_training_set <- datafeed[indeks_training_set, ]
class_training_set <- dataCreditRating[indeks_training_set, ]$risk_rating
input_testing_set <- datafeed[-indeks_training_set, ]

# menghasilkan dan menampilkan summary model
risk_rating_model <- C5.0(input_training_set, class_training_set)
plot(risk_rating_model)


library("openxlsx")
library("C50")

# Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")

# Mempersiapkan class dan input variables
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating)
input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
datafeed <- dataCreditRating[, input_columns]

# Mempersiapkan training dan testing set
set.seed(100) # untuk menyeragamkan hasil random antar tiap komputer
indeks_training_set <- sample(900, 800)

# Membuat dan menampilkan training set dan testing set
input_training_set <- datafeed[indeks_training_set, ]
class_training_set <- dataCreditRating[indeks_training_set, ]$risk_rating
input_testing_set <- datafeed[-indeks_training_set, ]

# menghasilkan model
risk_rating_model <- C5.0(input_training_set, class_training_set, control = C5.0Control(label = "Risk Rating"))
summary(risk_rating_model)

library("openxlsx")
library("C50")

# Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")

# Mempersiapkan class dan input variables
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating)
input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan", "kpr_aktif")
datafeed <- dataCreditRating[, input_columns]

# Mempersiapkan training dan testing set
set.seed(100) # untuk menyeragamkan hasil random antar tiap komputer
indeks_training_set <- sample(900, 780)

# Membuat dan menampilkan training set dan testing set
input_training_set <- datafeed[indeks_training_set, ]
class_training_set <- dataCreditRating[indeks_training_set, ]$risk_rating
input_testing_set <- datafeed[-indeks_training_set, ]

# menghasilkan model
risk_rating_model <- C5.0(input_training_set, class_training_set, control = C5.0Control(label = "Risk Rating"))
summary(risk_rating_model)

# Dari sini alur pengambilan keputusan untuk menentukan risk rating adalah: Jika jumlah tanggungan >lebih dari 4 maka perlu dilihat kondisi berikutnya yaitu:
#    1. Jika durasi pinjaman sampai dengan 24 bulan, maka klasifikasi risk ratingnya adalah 4.
#      Dari dataset training, alur ini mengklasifikasikan 98 data, namun 25 diantara 98 data ini salah klasifikasi. Berikut adalah tampilan data asal kita, terlihat beberapa kondisi yang
#      terpenuhi namun bukan dengan nilai risk rating 4 (warna merah).
# 2. Jika durasi pinjaman lebih dari 24 bulan, maka klasifikasi risk ratingnya adalah 5.
#   Dari dataset training, alur ini mengklasifikasikan 129 data, namun 49 diantara 129 data ini salah klasifikasi. Berikut adalah tampilan data asal kita, terlihat beberapa kondisi yang
#    terpenuhi namun bukan dengan nilai risk rating 5 (warna merah).






library("openxlsx")
library("C50")

# Mempersiapkan data
dataCreditRating <- read.xlsx(xlsxFile = "https://storage.googleapis.com/dqlab-dataset/credit_scoring_dqlab.xlsx")

# Mempersiapkan class dan input variables
# dataCreditRating$risk_rating[dataCreditRating$risk_rating == "1"] <- "satu"
# dataCreditRating$risk_rating[dataCreditRating$risk_rating == "2"] <- "dua"
# dataCreditRating$risk_rating[dataCreditRating$risk_rating == "3"] <- "tiga"
# dataCreditRating$risk_rating[dataCreditRating$risk_rating == "4"] <- "empat"
# dataCreditRating$risk_rating[dataCreditRating$risk_rating == "5"] <- "lima"
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating)
input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
datafeed <- dataCreditRating[, input_columns]

# Mempersiapkan training dan testing set
set.seed(100) # untuk menyeragamkan hasil random antar tiap komputer
indeks_training_set <- sample(900, 800)

# Membuat dan menampilkan training set dan testing set
input_training_set <- datafeed[indeks_training_set, ]
class_training_set <- dataCreditRating[indeks_training_set, ]$risk_rating
input_testing_set <- datafeed[-indeks_training_set, ]

# menghasilkan model
risk_rating_model <- C5.0(input_training_set, class_training_set, control = C5.0Control(label = "Risk Rating"))
summary(risk_rating_model)

# Dengan tingkat error 22.5 persen, model ini harusnya cukup layak digunakan. Dari confusion matrix juga terlihat banyak sekali yang diprediksi dengan benar, terutama untuk nilai risk_rating 4 dan 5. Pada bab berikutnya, kita akan evaluasi model ini dengan memprediksi nilai dari testing set.

# menggunakan model untuk prediksi testing set
predict(
    risk_rating_model,
    input_testing_set
)
# menyimpan hasil prediksi testing set ke dalam kolom hasil_prediksi
input_testing_set$risk_rating <-
    dataCreditRating[-
        indeks_training_set, ]$risk_rating
input_testing_set$hasil_prediksi <-
    predict(
        risk_rating_model,
        input_testing_set
    )
print(input_testing_set)

library("reshape2")

# membuat confusion matrix
dcast(hasil_prediksi ~ risk_rating, data = input_testing_set)

# Menghitung jumlah prediksi yang benar
nrow(input_testing_set[input_testing_set$risk_rating == input_testing_set$hasil_prediksi, ])
# menghitung jumlah prediksi yang salah
nrow(input_testing_set[input_testing_set$risk_rating != input_testing_set$hasil_prediksi, ])

aplikasi_baru <- data.frame(jumlah_tanggungan = 6, durasi_pinjaman_bulan = 12)
print(aplikasi_baru)


# melakukan prediksi
predict(risk_rating_model, aplikasi_baru)

aplikasi_baru <- data.frame(jumlah_tanggungan = 6, durasi_pinjaman_bulan = 64)

# melakukan prediksi
predict(risk_rating_model, aplikasi_baru)

