# Asosiy Buyruqlar va Tarix

## Sana va Vaqt

```bash
date
```

Hozirgi sana va vaqtni ko'rsatadi.

---

## Joriy Katalog

```bash
pwd
```

**pwd** - "Print Working Directory" ning qisqartmasi. Joriy ishchi katalogni ko'rsatadi.

---

## Tarix va Oldingi Buyruqlar

### Yuqoriga tugmasi

Yuqoriga tugmasini bosganda oldingi buyruqni qayta kiritadi.

### History buyrug'i

```bash
history
```

Barcha oldingi buyruqlar ro'yxatini ko'rsatadi. Ko'p Linux systemlarida oxirgi 1000 ta buyruqni saqlaydi.

### CTRL + R - Terminaldagi Qidirish

**CTRL + R** tugmasini bosing - bu terminaldagi **tarix bo'yicha qidirish** (reverse search) imkoniyatini beradi.

Bosganingizdan so'ng:

```bash
(reverse-i-search)`':
```

Endi qidirmoqchi bo'lgan buyruq so'zini yozing va u avtomatik topiladi.

**Misol:**

```bash
# CTRL + R ni bosing, keyin "git" yozing
(reverse-i-search)`git': git status
```

Agar topilgan buyruq to'g'ri bo'lsa, **Enter** bosing. Agar keyingisini ko'rmoqchi bo'lsangiz, yana **CTRL + R** ni bosing.

**Chiqish:** **CTRL + C** yoki **ESC** tugmasini bosing.

---

## Terminalni Tozalash

### Clear buyrug'i

```bash
clear
```

Terminal oynasini tozalaydi.

### CTRL + L

**CTRL + L** tugmasini bosing - bu ham terminal oynasini tozalaydi, lekin o'chirib yubormaydi. Yuqoriga scroll qilib uni ko'rishingiz mumkin.

---

## Kommentariyalar

Terminalda ham kommentariya mavjud. Bu `#` belgisi bilan yoziladi:

```bash
# Bu kommentariya
```

Kommentariyalar bajarilmaydi, faqat izoh sifatida ishlatiladi.
