# Echo va Output Operatorlari

## Echo Buyrug'i

```bash
echo "Salom dunyo!"
```

`echo` buyrug'i shunchaki matnni outputga chiqaradi.

**Natija:**
```
Salom dunyo!
```

---

## Output Operatorlari

### > Operatori (Overwrite)

`>` operatori faylga ma'lumot yozadi, lekin **eski ma'lumotni o'chirib yuboradi**.

```bash
echo "Salom dunyo!" > text
cat text
```

**Natija:**
```
Salom dunyo!
```

Agar yana bir marta yangi ma'lumot yozsak:

```bash
echo "Salom olam" > text
cat text
```

**Natija:**
```
Salom olam
```

Chunganingizdek `echo "Something" > filename` file ichidagi ma'lumotlarni saqlab qolmaydi, fileni butunlay o'chirib qaytadan yangi ma'lumot bilan create qiladi.

---

### >> Operatori (Append)

O'chirmasdan keyingi qatordan qo'shish uchun esa, ya'ni **append** uchun `>>` ishlatish kerak.

```bash
echo "Salom olam 2" >> text
cat text
```

**Natija:**
```
Salom olam
Salom olam 2
```

---

## Cat Buyrug'i

```bash
cat text
```

Fayl ichidagi matnni terminalda ko'rsatadi.

### Bir nechta faylni birdan o'qish

Cat buyrug'ini bir nechta fayl uchun bir vaqtda ishlatish ham mumkin:

```bash
cat text text
```

Bu ikki marta `text` faylining mazmunini ko'rsatadi.
