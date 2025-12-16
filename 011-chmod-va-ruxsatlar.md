# Chmod - Ruxsatlarni O'zgartirish

## Chmod Nima?

**chmod** - "Change Mode" ning qisqartmasi. Bu buyruq fayl yoki papkaning ruxsatlarini o'zgartirish uchun ishlatiladi.

---

## Harflar Bilan Chmod

### Asosiy Belgilar

- **u** - **user** (foydalanuvchi)
- **g** - **group** (guruh)
- **o** - **others** (boshqalar)
- **a** - **all** (hammasi)

### Amallar

- **+** - qo'shish
- **-** - olib tashlash
- **=** - aniq belgilash

---

## Misollar

### O'qish huquqini olib tashlash

```bash
chmod u-r text.txt
```

**Natija:**

```
--w-rw-r-- 1 lenovo lenovo 0 May 12 2025 text.txt
```

Endi fayl o'qib bo'lmaydi:

```bash
cat text.txt
# Permission denied
```

---

### O'qish huquqini qaytarish

```bash
chmod u+r text.txt
```

Endi qayta o'qish mumkin.

---

### Execute huquqini qo'shish

```bash
chmod +x text.txt
```

Bo'sh qoldirilsa, default sifatida **all** (hammaga) qo'shiladi.

**Natija:**

```
-rwxrwxr-x 1 lenovo lenovo 13 Dec 4 18:05 text.txt
```

---

## Raqamlar Bilan Chmod

### Ikkilik Sanoq Tizimi

```
0 -> 000 -> ---
1 -> 001 -> --x
2 -> 010 -> -w-
3 -> 011 -> -wx
4 -> 100 -> r--
5 -> 101 -> r-x
6 -> 110 -> rw-
7 -> 111 -> rwx
```

---

## Ommaviy Ishlatiladigan Raqamlar

### 000 - Hech kim hech narsa qila olmaydi

```bash
chmod 000 text.txt
```

**Natija:**

```
---------- 1 lenovo lenovo 13 Dec 4 18:05 text.txt
```

---

### 644 - Default Permission

Bu **eng ko'p ishlatiladigan** permission. Linux default file yaratganida shu ruxsatni beradi.

- **User**: rw- (o'qiy va yoza oladi)
- **Group**: r-- (faqat o'qiy oladi)
- **Others**: r-- (faqat o'qiy oladi)

```bash
chmod 644 text.txt
```

**Natija:**

```
-rw-r--r-- 1 lenovo lenovo 13 Dec 4 18:05 text.txt
```

---

### 755 - Script uchun

Bu **script va executable** fayllar uchun ishlatiladi.

- **User**: rwx (o'qiy, yoza va bajara oladi)
- **Group**: r-x (o'qiy va bajara oladi)
- **Others**: r-x (o'qiy va bajara oladi)

```bash
chmod 755 text.txt
```

**Natija:**

```
-rwxr-xr-x 1 lenovo lenovo 13 Dec 4 18:05 text.txt
```

---

### 666 - Hammaga o'qish va yozish

```bash
chmod 666 text.txt
```

**Natija:**

```
-rw-rw-rw- 1 lenovo lenovo 13 Dec 4 18:05 text.txt
```

---

### 777 - To'liq Ruxsat (VIP!)

Bu **barcha ruxsatlarni** beradi. Ehtiyotkorlik bilan ishlating!

```bash
chmod 777 text.txt
```

**Natija:**

```
-rwxrwxrwx 1 lenovo lenovo 13 Dec 4 18:05 text.txt
```

**Eslatma:** 777 raqami "VIP" deb ataladi, chunki hamma narsaga ruxsat bor!

---

## Foydali Resurslar

- [42.uz - Chmod va Permissions](https://42.uz/course/express-backend/chmod-ruxsat-bering-aka/permissions-va-chmod-2)
