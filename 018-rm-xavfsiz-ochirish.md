# Rm - Xavfsiz O'chirish Usullari

**OGOHLANTIRISH:** `rm` eng xavfli buyruqlardan biri! O'chirilgan fayllar qaytarilmaydi.

---

## Oddiy Fayl O'chirish

```bash
rm file.txt
```

---

## Bir Nechta Faylni O'chirish

```bash
rm file1.txt file2.txt file3.txt
```

---

## Papkani Ichidagi Bilan O'chirish

**Ehtiyot bo'ling!** Bu buyruq papka ichidagi barcha fayllarni o'chiradi:

```bash
rm -r myfolder
```

---

## Tasdiqlash Bilan O'chirish (Safety)

Har bir faylni o'chirishdan oldin tasdiqlash:

```bash
rm -i data.txt
```

**Natija:**

```
rm: remove regular file 'data.txt'? y
```

---

## Force Delete (Tasdiqsiz)

**Juda xavfli!** Hech qanday savol bermasdan o'chiradi:

```bash
rm -rf folder
```

**Eslatma:** Bu buyruqni faqat **100% ishonchingiz komil** bo'lganda ishlating!

---

## LIFEHACK: Ma'lum Pattern Bo'yicha O'chirish

### Barcha .log fayllarni o'chirish

```bash
rm *.log
```

### 1 dan 5 gacha fayllarni o'chirish

```bash
rm file{1..5}.txt
```

### test_ bilan boshlangan barcha .json fayllar

```bash
rm test_*.json
```

---

## LIFEHACK: 7 Kundan Eski Fayllarni O'chirish

```bash
find . -type f -mtime +7 -delete
```

Bu **avtomatik tozalash** uchun juda foydali!

---

## LIFEHACK: Trash-cli - Undo O'rniga

O'chirib tashlamasdan **trash**ga yuborish:

### O'rnatish

```bash
sudo apt install trash-cli
```

### Ishlatish

```bash
trash-put file.txt
```

Endi fayl **trash**da saqlanadi va kerak bo'lsa qaytarib olish mumkin!

### Trash'ni ko'rish

```bash
trash-list
```

### Trash'dan qaytarish

```bash
trash-restore
```

---

## Xavfsiz Rm Alias

Har safar tasdiqlash so'raydigan alias yaratish:

```bash
alias rm='rm -i'
```

Buni `~/.bashrc` yoki `~/.zshrc` fayliga qo'shing:

```bash
echo "alias rm='rm -i'" >> ~/.bashrc
source ~/.bashrc
```

Endi har safar `rm` ishlatganingizda tasdiqlash so'raydi!

---

## LIFEHACK: Fayllarni O'chirishdan Oldin Ko'rish (Dry-run)

Qaysi fayllar o'chirilishini ko'rish:

```bash
ls | grep ".log"
```

Keyin ishonch hosil qilganingizdan so'ng:

```bash
rm *.log
```
