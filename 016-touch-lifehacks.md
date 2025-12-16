# Touch - Lifehacklar va Triklar

## Oddiy Fayl Yaratish

```bash
touch file.txt
```

---

## Bir Nechta Faylni Birdan Yaratish

```bash
touch a.txt b.txt c.txt
```

---

## Pattern Bilan Fayl Yaratish

### 10 ta faylni 1 soniyada

```bash
touch file{1..10}.txt
```

**Natija:**

```
file1.txt file2.txt file3.txt ... file10.txt
```

---

## Fayl Mavjud Bo'lsa - Vaqtini Yangilash

Agar fayl allaqachon mavjud bo'lsa, `touch` faqat uning **oxirgi o'zgartirilgan vaqtini** yangilaydi.

```bash
touch existing.txt
```

Bu **log** fayllar yaratishda juda qo'l keladi.

---

## Bir Nechta Extensionda Fayl Yaratish

```bash
touch test.{txt,log,json,py}
```

**Natija:**

```
test.txt test.log test.json test.py
```

---

## Ichma-ich Katalogda Fayl Yaratish

Agar katalog mavjud bo'lmasa, xato beradi:

```bash
touch dir1/dir2/test.txt
```

**Xato:**

```
touch: cannot touch 'dir1/dir2/test.txt': No such file or directory
```

---

## LIFEHACK: Kataloglarni Ham Avtomatik Yaratish

```bash
mkdir -p dir1/dir2 && touch dir1/dir2/test.txt
```

Bu **IDE**lardagi "folder → file" chain yaratishga o'xshaydi.

---

## Tasodifiy Nom Bilan Fayl Yaratish

Test uchun tasodifiy nomli fayl yaratish:

```bash
touch test_$(date +%s).txt
```

**Natija:**

```
test_1701178345.txt
```

Har safar yangi nom bilan fayl yaratiladi (Unix timestamp asosida).
