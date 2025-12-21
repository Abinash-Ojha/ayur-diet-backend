# AyurDiet – Backend 🌿

This repository contains the **backend implementation** of **AyurDiet**, a cloud-based Ayurvedic diet planning and practice management system designed for Ayurvedic dietitians, clinics, and hospitals.

The backend is built to be **secure, scalable, and ML-ready**, handling patient management, Ayurvedic + nutritional analysis, and diet plan generation.

---

## 🎯 Backend Responsibilities

* User authentication & authorization (Admin / Doctor / Patient)
* Patient and doctor management
* Secure diet plan generation & delivery
* Integration with ML models for Ayurvedic and nutritional analysis
* Token-based access for patients
* High-performance, non-blocking API handling

---

## ⚙️ Tech Stack

### Core Backend

* Java
* Spring Boot
* Spring WebFlux (non-blocking, reactive APIs)
* Spring Security

### Authentication & Authorization

* JWT-based authentication
* Role-Based Access Control (RBAC)

  * Admin
  * Doctor
  * Patient

### Database

* MySQL

### ML Integration

* Spring WebFlux for real-time communication with ML services deployed as a separate service
* Supports TensorFlow-based models
* Handles synchronous ML inference requests

---

## 🔐 Security Design

* Stateless authentication using **JWT**
* Role-based endpoint protection
* Secure token-based access for patients to view diet plans
* Separation of concerns between admin, doctor, and patient operations

---

## 🔁 Backend Workflow

1. **Admin** registers and manages doctor accounts
2. **Doctor** creates and manages patient profiles
3. Doctor triggers **Ayurvedic + nutritional analysis**
4. Backend communicates with ML services using WebFlux
5. ML results are processed and structured into diet plans
6. **7-day diet plans** are securely delivered to patients
7. Patients access plans using a unique, doctor-linked token

---

## 🚀 Performance & Scalability

* Reactive programming model using **Spring WebFlux**
* Non-blocking ML service calls
* Designed to handle concurrent requests from multiple doctors
* Easily scalable for clinic- and hospital-level usage

---

## 🗄️ Database Design (High-Level)

* Users (Admin / Doctor / Patient)
* Patient profiles & medical data
* Diet plans & nutritional analysis results
* Audit & access tracking

---

## 🛠️ Deployment

* Backend hosted on **Render**
* CI/CD via **GitHub**
* postgresql hosted on **neon.tech**


---

## 📄 License

This backend is developed for educational and healthcare innovation purposes under the MedTech / HealthTech domain.

---

> *AyurDiet Backend powers scalable, secure, and intelligent Ayurvedic diet planning.* 🌱
