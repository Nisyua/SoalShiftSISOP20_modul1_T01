# SoalShiftSISOP20_modul1_T01

Nama Anggota

- Anis Saidatur Rochma [05311840000002]
- Kadek Nesya Kurniadewi [0531184000000

# Nomor 1

Whits adalah seorang mahasiswa teknik informatika. Dia mendapatkan tugas praktikum
untuk membuat laporan berdasarkan data yang ada pada file “Sample-Superstore.tsv”.
Namun dia tidak dapat menyelesaikan tugas tersebut. Laporan yang diminta berupa :

a) Tentukan wilayah bagian (region) dengan keuntungan (profit) yang paling sedikit dari file Sample-Superstore.csv

Jawaban : 

`awk -F "," 'NR > 1 {arr[$13] = arr[$13] + $NF}; END {for(key in arr)print key,arr[key]}' Sample-Superstore.csv | sort -g | head -1`

- `Array[key]` = untuk setiap elemen direpresentikan dlm variabel key di dlm array

- `-F”,”` = artinya menyuruh awk agar dapat membaca file csv ( comma separated values )

- `NR > 1` = hanya memproses baris nomor 2 dan seterusnya, baris pertama diskip karena hanya berisi header table

- `Arr[$13]` = arr[$13] += [$nf] = kode program ini dijalanin pada tiap baris di file .csv
Missal => 13 : Central ; 21 : 1000
Jadi, misalnya `Arr[Central;] = arr[central] += 1000` . Berfungsi untuk menghitung total profit tiap region

- `END{}` = kode ini dijalankan sekali saat di akhir saja

- `For(key in arr) print key arr[key]` = digunakan untuk menampilkan seluruh array. Format : Key-isi array. Missal = Central 3000

- `Sort -g | head -1` = sort berdasar general numeric dan tampilkan hanya 1 output , region beserta profit terkecil nya.


