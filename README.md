# SoalShiftSISOP20_modul1_T01

## Nama Anggota

- Anis Saidatur Rochma [05311840000002]
- Kadek Nesya Kurniadewi [05311840000009]

# Nomor 1

Whits adalah seorang mahasiswa teknik informatika. Dia mendapatkan tugas praktikum untuk membuat laporan berdasarkan data yang ada pada file “Sample-Superstore.tsv”. Namun dia tidak dapat menyelesaikan tugas tersebut. Laporan yang diminta berupa :

  1. Tentukan wilayah bagian (region) mana yang memiliki keuntungan (profit) paling sedikit
  2. Tampilkan 2 negara bagian (state) yang memiliki keuntungan (profit) paling sedikit berdasarkan hasil poin a
  3. Tampilkan 10 produk (product name) yang memiliki keuntungan (profit) paling sedikit berdasarkan 2 negara bagian (state) hasil poin b

Whits memohon kepada kalian yang sudah jago mengolah data untuk mengerjakan laporan tersebut.

*Gunakan Awk dan Command pendukung
Jawaban : 

#### 1a. 

      `awk -F "\t" 'NR > 1 {arr[$13] = arr[$13] + $NF}; END {for(key in arr)print key,arr[key]}' Sample-Superstore.tsv | sort -g -k 2 | head -1`

- `Array[key]` = untuk setiap elemen direpresentikan dlm variabel key di dlm array
- line awk dengan pemisah yaitu tab `"\t"` .
- `NR > 1` = hanya memproses baris nomor 2 dan seterusnya, baris pertama diskip karena hanya berisi header table
- `Arr[$13] = arr[$13] += [$NF]` = Berfungsi untuk menghitung total profit tiap region. Kebetulan kolom profit adalah yang terakhir maka dapat menggunakan `$NF`
- `END{}` = kode ini dijalankan sekali saat di akhir saja
- `For(key in arr) print key arr[key]` = digunakan untuk menampilkan seluruh array. Format : Key-isi array. Missal = Central 3000
- `Sort -g -k 2| head -1` = sort menggunakan `-g` karena profit bertipe data (float) dengan `-k 2` kolom ke 2 (profit) dan nemapilkan hanya 1 output saja

#### 1b. 

    `awk -F "t\" 'NR>1 {if($13~"Central")arr[$11]+=NF};END {for(key in arr)print key,arr[key]}' Sample-Superstore.tsv | sort -nk 2 | head -n 2
- Logika yang digunakan sama dengan soal 1a, hanya menambahkan `{if($13~"Central")arr[$11]+=NF}` dengan logika jika kolom 13 adalah Central, maka jumlahkan profit dengan tiap state .
    `head -n 2` hanya membutuhkan 2 output saja. 
    
### 1c. 
    `awk -F "\t" 'NR>1 {if($11~"Texas ||$11~Illinois")arr[$17]+=NF};END{for(key in arr)print arr[key]` Sample-Superstore.tsv | sort -g | headh -n 10
- Karena ada dua state, maka mencari 10 yang paling rendah profitnya dari gabungan kedua state.
- Logika yang digunakan sama persis dengan soal 1b, yang berbeda hanya kita akan print 10, sehingga `head -n 10` dan akan ada dua output yaitu nama produk($1) dan value produk($2).
  
# Nomor 2
