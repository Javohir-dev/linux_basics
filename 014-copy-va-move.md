# Copy va Move Operatsiyalari

## Cp - Faylni Nusxalash

### Oddiy Copy

```bash
cp <manba> <maqsad>
```

**Misol:**

```bash
touch something
cp something test/
```

**Eslatma:** Bu faqat copy qiladi, asl fayl o'z joyida qoladi!

---

### Papkani Copy Qilish

Agar papkani copy qilmoqchi bo'lsak, **-r** (recursive) parametridan foydalanishimiz kerak:

```bash
cp -r <papka> <maqsad>
```

**Misol:**

```bash
cp -r one test/
```

Agar `-r` ni ishlatmasak, xato beradi:

```
cp: -r not specified; omitting directory 'one'
```

---

### Copy Qilishda Ehtiyot

**WARNING:** Agar copy qilmoqchi bo'lgan joyingizda huddi shu nom bilan boshqa fayl bo'lsa, hechqanday ogohlantirishsiz **overwrite** qiladi (eski faylning ustiga yozadi).

**Xavfsizlik uchun:**

```bash
cp -i something test/
```

**-i** parametri tasdiqlash so'raydi:

```
cp: overwrite 'test/something'?
```

---

### Papka uchun ham -i ishlatish

```bash
cp -ir one test/
```

Agar ichida bir xil nomli fayllar bo'lsa, har birini alohida tasdiqlaydi:

```
cp: overwrite 'test/one/a.txt'?
```

---

## Mv - Ko'chirish va Rename

### Ko'chirish

```bash
mv <manba> <maqsad>
```

**Misol:**

```bash
mv text two/
```

Bu `text` ni olib `two` papkasiga joylashtiradi. Asl fayl eski joyidan yo'qoladi!

---

### Nomini O'zgartirish (Rename)

```bash
mv <eski-nom> <yangi-nom>
```

**Misol:**

```bash
mv one first
```

---

## Rm - O'chirish

### Oddiy O'chirish

```bash
rm <fayl>
```

**Misol:**

```bash
rm text
```

---

### Ko'p Fayllarni Yaratish va O'chirish

10 ta `.py` fayl yaratish:

```bash
touch file{1..10}.py
```

**Natija:**

```
file1.py file2.py file3.py ... file10.py
```

Barcha `.py` fayllarni o'chirish:

```bash
rm *.py
```

**Eslatma:** `*` belgisi **wildcard** hisoblanadi va barcha mos keladigan fayllarni tanlaydi.

---

### Pattern bilan O'chirish

Faqat `f` bilan boshlangan `.py` fayllarni o'chirish:

```bash
rm f*.py
```
