# Root va Sudo

## Root User Nima?

Linuxda **root user** tizimda to'liq huquqlarga ega bo'lgan maxsus foydalanuvchidir. Root user barcha fayllarni o'qish, yozish va bajarish imkoniyatiga ega.

**Eslatma:** Root user sifatida ishlash juda xavfli! Noto'g'ri buyruqlar tizimni ishlamay qolishiga olib kelishi mumkin.

---

## Sudo - Root Huquqlari Bilan Buyruq Bajarish

```bash
sudo <buyruq>
```

Buyruqni **root huquqlari bilan** bajaradi.

**Misol:**

```bash
sudo apt update
```

---

## Whoami Bilan Farq

### Oddiy foydalanuvchi

```bash
whoami
```

**Natija:**
```
lenovo
```

### Sudo bilan

```bash
sudo whoami
```

**Natija:**
```
root
```

---

## Root Userga O'tish

```bash
sudo su
```

Bu buyruq sizni **root user** sifatida tizimga kiritadi.

**Eslatma:** Root bo'lganingizda juda ehtiyot bo'ling! Har qanday buyruq tizimga ta'sir qilishi mumkin.

### Root Userdan Chiqish

```bash
exit
```

---

## Foydali Resurslar

- [42.uz - Chmod va Ruxsatlar](https://42.uz/course/express-backend/chmod-ruxsat-bering-aka/root-va-sudo)
