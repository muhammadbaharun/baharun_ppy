#kalkulator sederhana

while True:
    print("----------------------------------")
    print("Aplikasi Kalkulator Sederhana")
    print("1. Penjumlahan")
    print("2. Pengurangan")
    print("3. Perkalian")
    print("4. Pembagian")
    print("0. Keluar")
    
    user_input = int(input("Masukkan Operasi : "))
    if user_input == 0:
        break
    elif user_input == 1:
        angka1 = float(input("angka pertama : "))
        angka2 = float(input("angka kedua : "))
        hasil = angka1 + angka2
        print(">>> Hasil = {}".format(hasil))
    elif user_input == 2:
        angka1 = float(input("angka pertama : "))
        angka2 = float(input("angka kedua : "))
        hasil = angka1 - angka2
        print(">>> Hasil = {}".format(hasil))
    elif user_input == 3:
        angka1 = float(input("angka pertama : "))
        angka2 = float(input("angka kedua : "))
        hasil = angka1 * angka2
        print(">>> Hasil = {}".format(hasil))
    elif user_input == 4:
        angka1 = float(input("angka pertama : "))
        angka2 = float(input("angka kedua : "))
        hasil = angka1 / angka2
        print(">>> Hasil = {}".format(hasil))
    else:
        print(">>> Angka yang anda masukkan tidak benar!")
        
#kamus samawa

samawa={'saya':'kaji','kamu':'sia','mandi':'maneng','makan':'mangan','tidur':'tunung'}
#diminta masukkan inputan
mintakata=input("Masukkan satu kata yang ingin di translate :")


if mintakata not in samawa:
	print("invalid")
elif mintakata in samawa:
	print(samawa.get(mintakata))
  
#nilai mahasiswa

print("      Ujian Akhir Semester")
print("=" * 40)
print("Aplikasi Menghitung Nilai Mahasiswa")
print("Data Mahasiswa")
print("=" * 40)
nama = input("Masukkan Nama Anda				= ")
nim =  input("Masukkan NIM Anda				= ")
kelas= input("Masukkan Kelas Mahasiswa			= ")
mk   = input("Masukkan Nama Matakuliah Mahasiswa		= ")
sems = input("Masukkan Periode Semester Mahasiswa		= ")
print("=" * 40)
print("Input Nilai Mahasiswa : ")
print("=" * 40)
presensi= input("Masukkan Nilai Presensi Mahasiswa		=")
tugas= input("Masukkan Nilai Tugas Mahasiswa			=")
quiz= input("Masukkan Nilai Quiz Mahasiswa 			=")
prak= input("Masukkan Nilai Praktikum Mahasiswa		=")
uts= input("Masukkan Nilai UTS Mahasiswa			=")
uas= input("Masukkan Nilai UAS Mahasiswa			=")
print("=" * 40)
print("Data Hasil")
print("=" * 40)
print("Nama Mahasiswa 		=",nama)
print("NIM Mahasiswa		=",nim)
print("Kelas Mahasiswa		=",kelas)
print("Mata Kuliah 		=",mk)
absolut=(float(presensi)*0.1)+(float(tugas)*0.3)+(float(quiz)*0.1)+(float(prak)*0.2)+(float(uts)*0.1)+(float(uas)*0.2)
print("Nilai Absolut		=",absolut)
if absolut>=81:
	relatif="A"
	huruf=4
elif absolut>=76:
	relatif="B+"
	huruf=3.5
elif absolut >=66:
	relatif="B"
	huruf=3
elif absolut >=61:
	relatif="C+"
	huruf=2.5
elif absolut>=51:
	relatif="C"
	huruf=2
elif absolut>=26:
	relatif="D"
	huruf=1
elif absolut>=0:
	relatif="E"
	huruf=0
if absolut>=51:
	status="Lulus"
elif absolut>=0:
	status="Tidak Lulus"
print("Nilai Relatif		=", relatif)
print("Bobot Nilai Huruf	=", huruf)
print("Status			=", status)
