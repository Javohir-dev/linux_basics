# File va Less Buyruqlari

## File - Fayl Turini Aniqlash

```bash
file <fayl-nomi>
```

Faylning qaysi turdagi ma'lumot saqlayotganini aniqlaydi.

**Misol:**

```bash
file text.txt
```

**Natija:**

```
text.txt: ASCII text
```

---

## Extension Muhim Emas

Linux'da faylning **extension**i (masalan: `.txt`, `.jpg`) aslida muhim emas. `file` buyrug'i fayl ichidagi ma'lumotga qarab turini aniqlaydi.

**Misol:**

```bash
mv text.txt text
file text
```

**Natija:**

```
text: ASCII text
```

Fayl nomi o'zgardi, lekin turi o'zgarmadi!

---

## Less - Uzun Fayllarni O'qish

```bash
less <fayl-nomi>
```

**less** buyrug'ining vazifasi uzun yoki odatda bir sahifaga sig'maydigan fayllarni o'qish uchun ishlatiladi.

**Chiqish:** `Q` tugmasini bosing.

**Misol:**

```bash
less result.json
```

---

## Less Buyrug'ida Navigatsiya

- **Yuqoriga** - Yuqoriga harakat
- **Pastga** - Pastga harakat
- **Space** - Keyingi sahifa
- **B** - Oldingi sahifa
- **G** - Faylning oxiriga o'tish
- **g** - Faylning boshiga o'tish
- **/pattern** - Matn qidirish
- **Q** - Chiqish
