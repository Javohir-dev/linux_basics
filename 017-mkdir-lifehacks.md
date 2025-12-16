# Mkdir - Lifehacklar va Triklar

## Oddiy Papka Yaratish

```bash
mkdir images
```

---

## Bir Nechta Papka Yaratish

```bash
mkdir img logs cache
```

---

## 10 ta Folder Yaratish

```bash
mkdir folder{1..10}
```

**Natija:**

```
folder1 folder2 folder3 ... folder10
```

---

## Ichma-ich Katalog Yaratish

Bu **eng ko'p ishlatiladigan** buyruqlardan biri!

```bash
mkdir -p projects/app/src/components
```

**-p** parametri barcha yo'l bo'yicha yo'q kataloglarni avtomatik yaratadi.

---

## Ruxsat Bilan Birga Yaratish

Papka yaratish bilan birga uning ruxsatlarini ham belgilash:

```bash
mkdir -m 700 secure
```

Bu papka faqat egasi uchun to'liq ruxsatga ega bo'ladi (rwx------).

---

## Project Template Yaratish

Bir qatorda to'liq project strukturasini yaratish:

```bash
mkdir -p project/{src,tests,docs,config}
```

**Natija:**

```
project/
├── src/
├── tests/
├── docs/
└── config/
```

---

## LIFEHACK: Mkdir + Cd Birgalikda

Papka yaratib, darhol ichiga kirish:

```bash
mkdir newproj && cd newproj
```

Bu juda tez-tez ishlatiladigan kombinatsiya!
