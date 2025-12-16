# Hard va Symbolic Links

**Eslatma:** Bu mavzu juda muhim emas, lekin bilim uchun foydali.

---

## Hard Link Yaratish

```bash
ln <asl-fayl> <hard-link-nomi>
```

**Misol:**

```bash
touch text
ln text text-hard-link
ls -l
```

**Natija:**

```
-rw-rw-r-- 2 lenovo lenovo 0 Dec 8 16:21 text
-rw-rw-r-- 2 lenovo lenovo 0 Dec 8 16:21 text-hard-link
```

Ikkala fayl ham bir xil ma'lumotni ko'rsatadi. Raqam `2` ikki marta bog'langanligini bildiradi.

---

## Symbolic Link Yaratish

```bash
ln -s <asl-fayl> <symlink-nomi>
```

**Misol:**

```bash
ln -s text text-sym-link
ls -l
```

**Natija:**

```
-rw-rw-r-- 2 lenovo lenovo 0 Dec 8 16:21 text
-rw-rw-r-- 2 lenovo lenovo 0 Dec 8 16:21 text-hard-link
lrwxrwxrwx 1 lenovo lenovo 4 Dec 8 16:26 text-sym-link -> text
```

`text-sym-link` faqat `text` ga yo'naltiruvchi link.

---

## Asl Faylni O'chirish

```bash
rm text
ls -l
```

**Natija:**

```
-rw-rw-r-- 1 lenovo lenovo 0 Dec 8 16:21 text-hard-link
lrwxrwxrwx 1 lenovo lenovo 4 Dec 8 16:26 text-sym-link -> text
```

**Hard link** hali ham ishlaydi, chunki u asl ma'lumotga bog'langan.

**Symbolic link** esa **yaroqsiz** bo'lib qoladi (qizil rangda ko'rinadi), chunki u faqat fayl nomiga yo'naltirilgan.

---

## Farq

| **Hard Link** | **Symbolic Link** |
|---------------|-------------------|
| Asl faylning **ma'lumotiga** bog'langan | Asl faylning **nomiga** bog'langan |
| Asl fayl o'chirilsa ham ishlaydi | Asl fayl o'chirilsa ishlamaydi |
| Faqat fayllar uchun | Fayl va papkalar uchun |
| Bir xil disk ichida ishlaydi | Turli disklar orasida ishlaydi |
