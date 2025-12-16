# Symbolic Links

## Symbolic Link Nima?

**Symbolic link** (yoki **symlink**) - bu boshqa fayl yoki papkaga yo'naltirilgan maxsus tur fayl. Bu Windows'dagi "shortcut"ga o'xshaydi.

---

## Misol: Python3

```bash
cd /bin
ls -l | grep python3
```

**Natija:**

```
lrwxrwxrwx 1 root root 10 Nov 12 17:15 python3 -> python3.12
```

Bu yerda `python3` symbolic link bo'lib, u `python3.12` ga yo'naltirilgan.

---

## Nega Kerak?

Python'ni har safar yangilaganingizda versiya o'zgaradi. Masalan, `python3.10` dan `python3.12` ga o'tganda, har safar:

```bash
python3.12 main.py
```

deb yozishingiz shart emas. Buning o'rniga:

```bash
python3 main.py
```

ishlatib, **symbolic link** orqali eng yangi versiyaga avtomatik yo'naltiriladi.

---

## Symbolic Link Yaratish

```bash
ln -s <asl-fayl> <symlink-nomi>
```

**Misol:**

```bash
ln -s /usr/bin/python3.12 ~/python3
```

Endi `~/python3` orqali `python3.12` ni ishlatishingiz mumkin.

---

## Ls -l Bilan Ko'rish

```bash
ls -l
```

**Natija:**

```
lrwxrwxrwx 1 lenovo lenovo 4 Dec 8 16:26 text-sym-link -> text
```

- `l` boshida symlink ekanligini bildiradi
- `->` belgisi qayerga yo'naltirilganini ko'rsatadi
