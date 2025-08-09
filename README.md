# 🛒 Digikala-like Online Store Skeleton  
*(Laravel 11 + Vue 3 + Tailwind + Docker)*

---

## 📌 English Version

### Overview
This is a **Digikala-like** e-commerce skeleton with:
- Laravel 11 (backend, API, admin panel)
- Vue 3 + TailwindCSS (frontend, responsive design)
- Full-featured admin panel with theme customization from the panel
- Docker-based development environment (PHP 8.3, MySQL, Redis, Nginx, Node.js)
- Ready for **Iranian payment gateways** (e.g., Zarinpal)
- Easy to extend for commercial projects

---

### 🚀 Features
- User authentication (login, register, password reset)
- Product management (CRUD from admin panel)
- Category management
- Order system with payment integration
- Theme & layout customization from admin panel
- Search & filtering like Digikala
- Fully responsive (mobile-first)
- Dockerized setup for quick deployment

---

### 🛠 Prerequisites
- **Docker & Docker Compose** installed
- Git installed

---

### 📥 Installation (One-click)
```bash
git clone https://github.com/YOUR_USERNAME/digikala-skeleton.git
cd digikala-skeleton
chmod +x install.sh
./install.sh
```

After installation:
- Storefront → `http://localhost`
- Admin Panel → `http://localhost/admin`
- phpMyAdmin → `http://localhost:8081` (root / secret)

---

### 🔧 Development Notes
- All Laravel commands run inside `digikala_app` container:
```bash
docker exec -u www-data digikala_app php artisan migrate
docker exec -u www-data digikala_app php artisan db:seed
```
- Frontend build:
```bash
docker exec -u root digikala_app npm run dev
```

---

### 📄 License
This project is licensed under the **MIT License** – you are free to use, modify, and distribute it with proper attribution.

---

## 📌 نسخه فارسی

### معرفی
این پروژه یک اسکلت فروشگاه آنلاین شبیه **دیجی‌کالا** است با:
- لاراول 11 (بک‌اند، API، پنل مدیریت)
- Vue 3 + TailwindCSS (فرانت‌اند ریسپانسیو)
- پنل مدیریت کامل با امکان تغییر قالب از داخل پنل
- محیط توسعه داکرایز شده (PHP 8.3، MySQL، Redis، Nginx، Node.js)
- آماده اتصال به **درگاه‌های پرداخت ایرانی** (مثل زرین‌پال)
- مناسب برای توسعه پروژه‌های تجاری

---

### 🚀 امکانات
- ورود/ثبت‌نام کاربران
- مدیریت محصولات (افزودن، ویرایش، حذف از پنل)
- مدیریت دسته‌بندی‌ها
- سیستم سفارش و پرداخت
- تغییر قالب و ظاهر سایت از داخل پنل
- جستجو و فیلتر پیشرفته مثل دیجی‌کالا
- کاملاً واکنش‌گرا (موبایل‌فرست)
- نصب و راه‌اندازی سریع با Docker

---

### 🛠 پیش‌نیازها
- نصب **Docker و Docker Compose**
- نصب Git

---

### 📥 نصب (یک‌کلیکی)
```bash
git clone https://github.com/YOUR_USERNAME/digikala-skeleton.git
cd digikala-skeleton
chmod +x install.sh
./install.sh
```

پس از نصب:
- فروشگاه → `http://localhost`
- پنل مدیریت → `http://localhost/admin`
- phpMyAdmin → `http://localhost:8081` (کاربر: root / پسورد: secret)

---

### 🔧 نکات توسعه
- اجرای دستورات لاراول داخل کانتینر:
```bash
docker exec -u www-data digikala_app php artisan migrate
docker exec -u www-data digikala_app php artisan db:seed
```
- بیلد فرانت‌اند:
```bash
docker exec -u root digikala_app npm run dev
```

---

### 📄 لایسنس
این پروژه تحت **لایسنس MIT** منتشر شده است – آزاد هستید که آن را استفاده، تغییر و توزیع کنید به شرط ذکر منبع.
