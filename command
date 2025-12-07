date -> "Hozirgi sana va vaqtni ko'rsatadi"

pwd -> "Joriy ishchi katalogni ko'rsatadi"

yuqoriga-tugmasini-bosganda -> "Oldingi buyruqni qayta kiritadi"

history -> "Barcha oldingi buyruqlar ro'yxatini ko'rsatadi - ko'p linux systemlarida oxirigi 1000 ta buyruqni saqlaydi"

clear -> "Terminal oynasini tozalaydi"

CRTL + l -> "Terminal oynasini tozalaydi, lekin o'chirib yubormaydi yuqoriga chiqib uni ko'rishingiz mumkin"

# Terminalda ham comment bor bu # bilan belgilanadi

# ================================================== #
# ============ Boshlang'ich buyruqlar ============== #
# ================================================== #

pwd -> "Joriy ishchi katalogni ko'rsatadi"

ls -> "Joriy katalogdagi fayllar va papkalarni ko'rsatadi"

ls -l -> "Joriy katalogdagi fayllar va papkalarni list ko'rinishida ko'rsatadi"

ls -a -> "Yashirin fayllar va folderlarni ham ko'rsatadi"

ls -la -> "Yashirin fayllar va folderlarni list ko'rinishida ko'rsatadi"

ls -lh -> "Fayl o'lchamlarini inson o'qishi mumkin bo'lgan formatda ko'rsatadi"

ls -R -> "Joriy katalog va uning ichidagi barcha papkalarni rekursiv ravishda ko'rsatadi"

ls <folder-nomi> -> "Ko'rsatilgan papkadagi fayllar va papkalarni ko'rsatadi"

# Folderlar orasida harakatlanish:

cd <folder-nomi> -> "Ko'rsatilgan papkaga o'tadi"

cd .. -> "Bitta yuqoriga papkaga o'tadi"
cd ~ -> "Uy papkasiga o'tadi"
cd / -> "Root (ildiz) papkaga o'tadi"
cd - -> "Oldingi papkaga qaytadi"


# Create va Remove 
mkdir <folder-nomi> -> "Yangi papka yaratadi"

touch <fayl-nomi> -> "Yangi bo'sh fayl yaratadi"

rm <fayl-nomi> -> "Ko'rsatilgan faylni o'chiradi"

rm -r <folder-nomi> -> "Ko'rsatilgan papkani va uning ichidagi barcha fayllarni o'chiradi"

rmdir <folder-nomi> -> "Bo'sh papkani o'chiradi"


# Fayllar bilan ishlash:
cat <fayl-nomi> -> "Fayl ichidagi matnni terminalda ko'rsatadi"

nano <fayl-nomi> -> "Terminalda matn faylini tahrirlash uchun ochadi"

cp <manba-fayl> <maqsad-fayl> -> "Faylni nusxalaydi"

mv <manba-fayl> <maqsad-fayl> -> "Faylni ko'chiradi yoki nomini o'zgartiradi"

# Tizim haqida ma'lumot olish:
uname -a -> "Tizim haqida to'liq ma'lumot beradi"

top -> "Joriy tizim jarayonlari va resurslar ishlatilishini ko'rsatadi"
# Yaxshiroq va ko'proq ma'lumot olish uchun 'htop' ni o'rnatishingiz mumkin"
sudo apt install htop -> "htop ni o'rnatadi (faqat Debian/Ubuntu tizimlarida)"
htop -> "Tizim jarayonlari va resurslar ishlatilishini interaktiv ko'rsatadi"

df -h -> "Disk bo'sh joyi haqida ma'lumot beradi"
free -h -> "Xotira (RAM) ishlatilishi haqida ma'lumot beradi"

# Foydalanuvchilar bilan ishlash:
whoami -> "Joriy foydalanuvchi nomini ko'rsatadi"

id -> "Joriy foydalanuvchi haqida batafsil ma'lumot beradi"

passwd -> "Foydalanuvchi parolini o'zgartiradi"

# Tarmoq bilan ishlash:
ping <manzil> -> "Ko'rsatilgan manzilga ping yuboradi va javob vaqtini o'lchaydi"

ifconfig -> "Tarmoq interfeyslarini ko'rsatadi va sozlash imkonini beradi (ba'zi tizimlarda 'ip a' buyrug'i ishlatiladi)"

neofetch -> "Tizim haqida chiroyli ma'lumotlarni ko'rsatadi (avval o'rnatilishi kerak)"
sudo apt install neofetch -> "neofetch ni o'rnatadi (faqat Debian/Ubuntu tizimlarida)"
neofetch -> "Tizim haqida chiroyli ma'lumotlarni ko'rsatadi"


# ================================================== #
# ============ Access lar bilan ishlash ============ #
# ================================================== #

# https://42.uz/course/express-backend/chmod-ruxsat-bering-aka/root-va-sudo

# Docs YouTube description uchun
# https://www.webasha.com/blog/linux-file-permissions-explained-for-beginners-understanding-rwx-chmod-777-and-octal-binary-modes-with-practical-examples
# https://www.digitalocean.com/community/tutorials/how-to-set-permissions-linux

# Linuxda bir user bor va u root user hisoblanadi. Root user tizimda to'liq huquqlarga ega bo'lib, barcha fayllarni o'qish, yozish va bajarish imkoniyatiga ega.
# Boshqa foydalanuvchilar esa cheklangan huquqlarga ega bo'lishi mumkin.

# Kampyuterni o'rganayotganimda bir gap eshitgandim:
# hohlaganingni qil baribir buzib qo'yolmaysan deyishardi
# Lekin root bilan buni iloji bor
# Root user bo'lsangiz, tizimdagi har qanday fayl yoki papkani o'chirishingiz, o'zgartirishingiz yoki yaratishingiz mumkin.
# Bu juda kuchli huquq bo'lib, ehtiyotkorlik bilan foydalanish kerak.
# Noto'g'ri buyruqlarni bajarish tizimning ishlashiga salbiy ta'sir ko'rsatishi yoki hatto tizimni ishlamay qolishiga olib kelishi mumkin.

whoami -> "Joriy foydalanuvchi nomini ko'rsatadi"
# Javohir

sudo <buyruq> -> "Buyruqni root huquqlari bilan bajaradi"
# Misol uchun:
sudo whoami -> "Bu ham Joriy foydalanuvchi nomini ko'rsatadi, lekin root huquqlari bilan bajarilganligi uchun yani sudo bilan, bu root user nomini ko'rsatadi"
# root

# Agar siz buyrug'larni root sifatida sudo orqali emas o'zingiz root bo'lmoqchi bo'lsangiz:
sudo su -> "Root userga o'tish"
# root bo'lgandan keyin:
whoami -> "Endi bu root user nomini ko'rsatadi"


lenovo@javohir:~/linux$ ls -l
total 4
drwxrwxr-x 2 lenovo lenovo 4096 May 12  2025 test       # Buni boshida d bor (drwxrwxr-x) bu d directory yani papka ekanligini bildiradi
-rw-rw-r-- 1 lenovo lenovo    0 May 12  2025 text.txt   # Buni boshida - bor (-rw-rw-r--) bu - file yani fayl ekanligini bildiradi
# Bu yerda fayl va papkalarning ruxsatlari ko'rsatilgan
# r - read (o'qish)
# w - write (yozish)
# x - execute (bajarish)

# birinchi lenovo - fayl yoki papka egasining (owner) ruxsatlari
# ikkinchi lenovo - guruh (group) ruxsatlari

# birinchi rw- fayl egasi uchun (owner) permissionlar yani (r - read) o'qiy oladi (w - write) yoza oladi
# ikkingchi rw- fayl guruhi uchun (group) permissionlar yani (r - read) o'qiy oladi (w - write) yoza oladi
# uchunchisi r-- fayl qolgan hamma uchun (others) permissionlar yani (r - read) o'qiy oladi boshqalari uchun ruxsat yo'q


# Endi agar biz shu permissionlarni o'zgartirishni hohlasak chmod bizga yorgamga keladi
# chmod bu change mode
# ================================= #

# u -> user   | Faqat foydalanuvchi uchun
# g -> group  | Guruh uchun
# o -> others | Boshqa hamma uchun
# a -> all    | Umuman olganda barcha uchun

# ================================= #
chmod u-r text.txt

# u -> user
# - -> olib tashlash yani ayirish
# r -> read yani o'qishni

# Natija:
lenovo@javohir:~/linux$ ls -l
--w-rw-r-- 1 lenovo lenovo    0 May 12  2025 text.txt

lenovo@javohir:~/linux$ cat text.txt 
cat: text.txt: Permission denied

# Endi shu hususiyatni qayta qo'shmoqchi bo'lsa quyidagidek qilishimiz kerak.

chmod u+r text.txt

# u -> user
# + -> qo'shish
# r -> read yani o'qishni

# Natija:
lenovo@javohir:~/linux$ cat text.txt 
Salom dunyo!

# Endi execute qilishni ko'ramiz
lenovo@javohir:~/linux$ ./text.txt
bash: ./text.txt: Permission denied

# Ruxsat berish uchun har doimgidek chmod yordamga keladi.
chmod +x text.txt

# + -> qo'shish
# x -> execute
# Boshida u, o, g, a kabilar yozilmadi chunki bo'sh qoldirsak default a yani all ni oladi

# Natija:
lenovo@javohir:~/linux$ ls -l
-rwxrwxr-x 1 lenovo lenovo   13 Dec  4 18:05 text.txt

lenovo@javohir:~/linux$ ./text.txt
./text.txt: line 1: Salom: command not found

# Ikkilik sanoq tizimida qanday sanaladi?
# https://42.uz/course/express-backend/chmod-ruxsat-bering-aka/permissions-va-chmod-2
0     -> 0
1     -> 1
10    -> 2
11    -> 3
100   -> 4
101   -> 5
110   -> 6
111   -> 7
# 000 - 001 - 010 - 011 - 100 - 101 - 110 - 111
# endi shu uch xonalik 01 larni rwx yani:
# r - read (o'qish)
# w - write (yozish)
# x - execute (bajarish)

# 000 - xech narsaga ruxsati yo'q
# 001 - faqat x yani execute ga ruxsati bor
# 010 - faqat w yani write uchun rexsati bor
# ...
# 111 - rwx yani barchasi uchun ruxsati bor.

chmod 000 text.txt # Bu degani hechkim hecnarsa qilolmaydi

# Natija:
lenovo@javohir:~/linux$ ls -l
---------- 1 lenovo lenovo   13 Dec  4 18:05 text.txt

# bu 100 aslida [user->001, group->000, other->000] lar uchun ishlaydi yani user execute qilaoladi halos.
lenovo@javohir:~/linux$ chmod 100 text.txt 

# Natija:
lenovo@javohir:~/linux$ ls -l
---x------ 1 lenovo lenovo   13 Dec  4 18:05 text.txt


# bu hammaga rw yani o'qish va yozish uchun ruxsat beramiz degani - [user->110, group->110, other->110]
chmod 666 text.txt  

# Natija:
lenovo@javohir:~/linux$ ls -l
-rw-rw-rw- 1 lenovo lenovo   13 Dec  4 18:05 text.txt

# bu hammaga rwx yani o'qish, yozish va bajarish (execute) uchun ruxsat beramiz degani - [user->111, group->111, other->111]
chmod 777 text.txt  # Endi chundilarni nimaga 777 raqami VIP bo'lib ishlatilinishini? Bularni hamma narsaga access'lari bor )

# Natija:
lenovo@javohir:~/linux$ ls -l
-rwxrwxrwx 1 lenovo lenovo   13 Dec  4 18:05 text.txt

# Aasosiy ishlatilinadigan permissionlardan biri bu 644 yani [user->110, group->100, other->100] - user -> (rw-) group -> (r--) other -> (r--)
# Bu permission default hisoblanadi yani file create qilinganida 644 bilan create qiladi linuxning o'zi
chmod 644 text.txt

# Natija:
lenovo@javohir:~/linux$ ls -l
-rw-r--r-- 1 lenovo lenovo   13 Dec  4 18:05 text.txt

# Yana biri bu 755 yani [user->111, group->101, other->101] - user -> (rwx) group -> (r-x) other -> (r-x)
chmod 755 text.txt 

# Natija:
lenovo@javohir:~/linux$ ls -l
-rwxr-xr-x 1 lenovo lenovo   13 Dec  4 18:05 text.txt

# ================================================== #
# =========== file, less, symbolic links =========== #
# ================================================== #

## FILE
file text.txt # Qaysi turdagi ma’lumot saqlayapti? Shu savolga javob beradi.
text.txt: ASCII text
# bu fayl aynan .txt bilan tugashi shart emas
mv text.txt text

file text 
text: ascii text


## LESS
# less ning vazifasi uzun yoki odatda bir sahifaga sig'maydigan fayllarni o'qish uchun ishlatiladi.
# chiqish uchun q
less text.txt

less result.json

## SYMBOLIC LINKS
cs /bin
ls -l

# Natija:
lrwxrwxrwx 1 root root          10 Nov 12 17:15  python3 -> python3.12

# Biz doim pythonni yangilashimiz mumkin aynan shundan keyin python3.10 ni python3.12 ga yangilasa
# python orqali ishga tushirish vaqtida `python3.10 main.py` keyin esa `python3.12 main.py` qilmasligimiz uchun
# bizga shu SYMBOLIC LINKS kerak bu bizga har qanday pythonning 3 versiyasiga tegishli versiyalarni python3 bilan ishga tushirish uchun imkoniyat beradi.

# ================================================== #
# =========== file, less, symbolic links =========== #
# ================================================== #


# Oddiy folder create qilish uchun
mkdir somename

# Bir vaqtda ko'r folderlar create qilish uchun
mkdir first secont ...

# Copy
# File create
touch something
ls

# Natija:
linux-logo.png  one  result.json  something  test  text  three  two

# something ni test/ ichiga copy qilingi
cp something test/
ls test/

# Natija:
something

# Esdan chiqarish kerak emas bu faqat copy qiladi eskisi o'chib ketmaydi!
ls

# Natija:
linux-logo.png  one  result.json  something  test  text  three  two

# Agar dir ni copy qilmoqchi bo'lsak
# Xato chiqadi
cp  one test/

# Natija:
cp: -r not specified; omitting directory 'one'


cp -r one test/
ls test/

# Natija:
one  something

# WARNING
# Agar copy qilmoqchi bo'lgan joyingizda huddi shu nom bilan boshqa fayl bo'lsa
# hechqanday ogohlantirishsiz overwrite qiladi yani uni o'rniga siz copy qilayotgan faylingizni joylaydi.
# Bunda extiyot bo'lishingiz kerka va copy qilishdan avval ls bilan tekshiring bu nom bilan faly mavjud emasmi deb.

# agar fayllar ko'p va siz tekshirishga ketadigan vaqtingizni tejamoqchi bo'lsangiz -i ishlating.
cp -i something test/

# Natija:
cp: overwrite 'test/something'?

# Avval file yozamiz
echo "hello" > one/a.txt
cp -ir one test/

# Natija:
cp: overwrite 'test/one/a.txt'?