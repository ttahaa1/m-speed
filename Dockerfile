# استخدم صورة البيثون الأساسية
FROM python:3.8-slim

# ضبط مجلد العمل في الحاوية
WORKDIR /app

# نسخ متطلبات المشروع وتثبيتها
COPY requirements.txt .
RUN pip install -r requirements.txt

# نسخ باقي ملفات المشروع
COPY . .

# الأمر الذي سيبدأ التطبيق
CMD ["python", "main.py"]
