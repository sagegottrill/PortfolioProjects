# 🏥 Advanced Predictive Modeling for Heart Disease Using Machine Learning  

## 📌 Project Overview  
This project focuses on developing a machine learning model capable of predicting the presence of heart disease based on clinical attributes. Using structured data, classification techniques, and supervised learning, we aim to assist doctors in making data-driven decisions for early diagnosis and improved patient outcomes.  

## 💡 Problem Statement  
A major hospital is interested in investing in machine learning to enhance diagnostic accuracy. They have provided a heart disease dataset and want us to determine whether machine learning can effectively predict heart disease based on patient attributes.  

**Goal:** Given clinical parameters about a patient, can we predict whether or not they have heart disease?  

## 📊 Dataset Information  
We utilize the **Heart Disease Dataset** from Kaggle:  
🔗 [Dataset Link](https://www.kaggle.com/datasets/johnsmith88/heart-disease-dataset)  

### **📝 Data Dictionary**  
| Feature | Description |
|---------|------------|
| **age** | Age in years |
| **sex** | Gender (1 = male, 0 = female) |
| **cp** | Chest pain type (0 = Typical angina, 1 = Atypical angina, 2 = Non-anginal pain, 3 = Asymptomatic) |
| **trestbps** | Resting blood pressure (mm Hg) |
| **chol** | Serum cholesterol in mg/dl |
| **fbs** | Fasting blood sugar > 120 mg/dl (1 = true, 0 = false) |
| **restecg** | Resting electrocardiographic results (0 = Normal, 1 = ST-T wave abnormality, 2 = Left ventricular hypertrophy) |
| **thalach** | Maximum heart rate achieved |
| **exang** | Exercise-induced angina (1 = Yes, 0 = No) |
| **oldpeak** | ST depression induced by exercise relative to rest |
| **slope** | Slope of the peak exercise ST segment (0 = Upsloping, 1 = Flat, 2 = Downsloping) |
| **ca** | Number of major vessels (0-3) colored by fluoroscopy |
| **thal** | 0 = Normal, 1 = Fixed defect, 2 = Reversible defect |
| **target** | Heart disease diagnosis (1 = Yes, 0 = No) |

---

## ⚙️ Tools & Technologies Used  
### **🛠️ Libraries**  
- **pandas** – Data analysis and manipulation  
- **numpy** – Numerical computing  
- **matplotlib & seaborn** – Data visualization  
- **scikit-learn** – Machine learning models  
- **Jupyter Notebook** – Experimentation environment  

---

## 🔍 Methodology  

### **1️⃣ Data Preprocessing**  
- Handling missing values  
- Encoding categorical variables  
- Feature scaling  

### **2️⃣ Exploratory Data Analysis (EDA)**  
- Understanding feature distributions  
- Correlation analysis  
- Outlier detection  

### **3️⃣ Model Training & Evaluation**  
We experimented with multiple machine learning models to identify the most accurate predictor:  
- **Logistic Regression**  
- **K-Nearest Neighbors (KNN) Classifier**  
- **Random Forest Classifier**  

### **4️⃣ Performance Metrics**  
To evaluate model effectiveness, we used:  
- **Accuracy**  
- **Precision, Recall, and F1-Score**  
- **ROC-AUC Curve**  

---

## 📈 Model Evaluation  
Our target is to achieve **at least 95% accuracy** during the proof of concept phase. If successful, the hospital will consider implementing the model for real-world applications.  

---

## 📌 How to Use This Project  
### **🔹 Clone the Repository**  
```sh
git clone https://github.com/yourusername/heart-disease-prediction.git
cd heart-disease-prediction
