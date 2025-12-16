# Access va Permissions

## Ls -l Nima Ko'rsatadi?

```bash
ls -l
```

**Natija:**

```
drwxrwxr-x 2 lenovo lenovo 4096 May 12  2025 test
-rw-rw-r-- 1 lenovo lenovo    0 May 12  2025 text.txt
```

---

## Tushuntirish

### D va - Belgilari

- `d` - **directory** (papka)
- `-` - **file** (fayl)

### Ruxsatlar (Permissions)

Har bir fayl yoki papka uchun **9 ta belgi** mavjud:

```
rwxrwxr-x
```

Bu 3 guruhga bo'linadi:

1. **Birinchi 3 ta** - **Owner** (egasi) uchun
2. **Ikkinchi 3 ta** - **Group** (guruh) uchun
3. **Uchinchi 3 ta** - **Others** (boshqalar) uchun

---

### R, W, X Nima?

- **r** - **read** (o'qish huquqi)
- **w** - **write** (yozish huquqi)
- **x** - **execute** (bajarish huquqi)

---

## Misol

```
-rw-rw-r-- 1 lenovo lenovo 0 May 12 2025 text.txt
```

- **Birinchi `rw-`**: Owner (lenovo) faylni o'qiy va yoza oladi, lekin bajara olmaydi.
- **Ikkinchi `rw-`**: Group (lenovo) faylni o'qiy va yoza oladi.
- **Uchinchi `r--`**: Boshqalar faqat o'qiy oladi.

---

## Foydali Resurslar

- [42.uz - Permissions](https://42.uz/course/express-backend/chmod-ruxsat-bering-aka/root-va-sudo)
- [Linux File Permissions Explained](https://www.webasha.com/blog/linux-file-permissions-explained-for-beginners-understanding-rwx-chmod-777-and-octal-binary-modes-with-practical-examples)
- [DigitalOcean - Linux Permissions](https://www.digitalocean.com/community/tutorials/how-to-set-permissions-linux)
