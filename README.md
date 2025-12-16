# Super Lifehacklar va Praktika

## 1. Mkdir + Cd Birgalikda

Papka yaratib darhol ichiga kirish:

```bash
mkdir newproj && cd newproj
```

---

## 2. Touch Bilan Project Template Yaratish

```bash
touch {index.html,app.js,style.css,README.md}
```

**Natija:**

```
index.html  app.js  style.css  README.md
```

---

## 3. Tasodifiy Fayl Yaratish (Test Uchun)

```bash
touch test_$(date +%s).txt
```

Har safar yangi nomli fayl yaratadi (Unix timestamp asosida).

---

## 4. Fayllarni O'chirishdan Oldin Ko'rish (Dry-run)

```bash
ls | grep ".log"
```

Ko'rib chiqqandan so'ng:

```bash
rm *.log
```

---

## 5. Rm Xavfsiz Alternative - Alias

Har safar tasdiqlash so'raydigan alias:

```bash
alias rm='rm -i'
```

Buni `~/.bashrc` ga qo'shish:

```bash
echo "alias rm='rm -i'" >> ~/.bashrc
source ~/.bashrc
```

---

## 6. Project Strukturasini Tezda Yaratish

```bash
mkdir -p project/src/utils && cd project
touch src/{main.py,config.json}
```

---

## 7. Trash-cli Bilan Xavfsiz O'chirish

O'rnatish:

```bash
sudo apt install trash-cli
```

Ishlatish:

```bash
trash-put file.txt
```

Qaytarib olish:

```bash
trash-restore
```

---

## 8. 7 Kundan Eski Fayllarni O'chirish

```bash
find . -type f -mtime +7 -delete
```

---

## Amaliy Mashq (3 daqiqa ichida)

Quyidagi vazifalarni bajaring:

1. `mkdir -p project/src/utils`
2. `touch project/src/{main.py,config.json}`
3. `rm project/src/config.json`
4. `trash-put project/src/main.py` (bonus)

---

## Qo'shimcha Triklar

### Bir nechta papka yaratish va har biriga fayl joylashtirish

```bash
mkdir -p {frontend,backend}/{src,tests}
touch frontend/src/App.js backend/src/server.js
```

### Git ignore file yaratish

```bash
touch .gitignore
echo "node_modules/" >> .gitignore
echo ".env" >> .gitignore
```

### README yaratish

```bash
touch README.md
echo "# My Project" >> README.md
```

---

## Yakun

Ushbu lifehacklar sizning ishingizni sezilarli darajada tezlashtiradi va xavfsizroq qiladi. Amaliyotda ishlatib ko'ring!
