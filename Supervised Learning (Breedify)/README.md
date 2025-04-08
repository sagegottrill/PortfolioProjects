# 🐶 Who’s That Doggy?  
### Deep Learning | Neural Networks | TensorFlow | Transfer Learning

---

## 📘 Project Summary

**Who’s That Doggy?** is a deep learning project designed to solve a real-world problem for a prestigious global dog competition. After a data wipe erased all dog breed profiles, the organizers needed an urgent solution to classify over 10,000 dog images before the weekend event.

We leveraged **TensorFlow**, **Transfer Learning**, and **Convolutional Neural Networks (CNNs)** to build a multi-class image classification model that accurately identifies **120 dog breeds** using the **[Kaggle Dog Breed Identification Dataset](https://www.kaggle.com/c/dog-breed-identification/data)**.

---

## 🚀 Technologies & Tools Used

- Python 🐍  
- TensorFlow 2.x & Keras  
- TensorFlow Hub (Pre-trained Models)  
- NumPy & Pandas  
- Matplotlib & Seaborn  
- Google Colab / Jupyter Notebook  

---

## 🧠 Why It Matters

This project reflects real-life use cases of image classification in industry:

- 🏥 Medical imaging classification  
- 🚗 Self-driving car vision systems (e.g. Tesla)  
- 🏠 Automated property image tagging (e.g. Airbnb)  

It’s a perfect case study in how **machine learning + transfer learning** can save time, cost, and manual effort.

---

## 🔁 Project Workflow

1. **📥 Data Collection**  
   - Download dataset from Kaggle  
   - Inspect images & class balance  

2. **🔧 Data Preprocessing**  
   - Resize, normalize & prepare tensors  
   - One-hot encode labels  
   - Create training, validation & test sets  

3. **🧠 Model Building**  
   - Use `tf.keras.Sequential` + `TensorFlow Hub`  
   - Base model: Pre-trained CNN (e.g. MobileNetV2, EfficientNet)  
   - Add classification head (Dense layers)  
   - Compile with `categorical_crossentropy` loss  

4. **📈 Training & Monitoring**  
   - Use callbacks: `EarlyStopping`, `ModelCheckpoint`, `TensorBoard`  
   - Train with `.fit()` and monitor accuracy  

5. **📊 Evaluation**  
   - Predict using `.predict()`  
   - Plot confusion matrix  
   - Visualize correct/wrong predictions  

6. **🔁 Fine-Tuning**  
   - Unfreeze layers of the base model  
   - Retrain with a smaller learning rate  
   - Improve generalization and accuracy  

7. **💾 Save & Share**  
   - Export model as `.h5` or `.pb`  
   - Ready for deployment on web or mobile

---

## 📊 Results

| Metric              | Value     |
|---------------------|-----------|
| Accuracy (Top-1)    | ~89%      |
| Accuracy (Top-5)    | ~96%      |
| Training Time       | ~30 mins  |
| Preprocessing Time  | ~5 mins   |

---


---

## 🖼 Sample Outputs

| 🐶 Input Image         | 🧠 Predicted Breed     |
|------------------------|------------------------|
| ![dog1](example1.jpg)  | English Bulldog        |
| ![dog2](example2.jpg)  | German Shepherd        |
| ![dog3](example3.jpg)  | Golden Retriever       |

---

## 📦 Dataset

- **Source**: [Kaggle Dog Breed Identification](https://www.kaggle.com/c/dog-breed-identification/data)  
- **Images**: 10,000+  
- **Labels**: 120 unique dog breeds  
- **Format**: JPEG images, with class labels in CSV  

---

## 🧠 Key Learnings

- Hands-on experience with **transfer learning**  
- Fine-tuning pre-trained models for custom datasets  
- Practical understanding of **multi-class classification**  
- TensorBoard for monitoring model training  
- Saving, loading, and deploying deep learning models  

---

## ⭐ Future Improvements

- Integrate with **Streamlit** or **Gradio** for web demo  
- Convert model to **TensorFlow Lite** for mobile apps  
- Add support for **real-time webcam prediction**  
- Use **Top-5 accuracy** for better multi-class handling  

---

## 📬 Contact & Credits

**Made with 💙 by Daniel Nicholas Dibal**  
📧 Email: danielnicholasdibal@gmail.com  
🌍 Portfolio: https://daniel-nicholas-portfolio.up.railway.app

---

## 🙌 Acknowledgements

- [Kaggle](https://www.kaggle.com/c/dog-breed-identification/data) for the dataset  
- [TensorFlow](https://www.tensorflow.org/) for the framework  
- Deep Learning community for open-source knowledge  

