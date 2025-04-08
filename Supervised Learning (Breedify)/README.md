🐶 Who’s That Doggy?
Deep Learning for Dog Breed Classification using TensorFlow & Transfer Learning
📘 Project Summary
This project was built to solve a critical real-world problem:
A client who hosts one of the world’s biggest dog competitions lost access to thousands of dog breed profiles due to a data wipe. The event is around the corner, and manually classifying each dog’s breed by humans is no longer feasible.

That’s where deep learning comes in.

We built an intelligent image classification system using TensorFlow 2.x, Transfer Learning, and Convolutional Neural Networks (CNNs) to classify 120 dog breeds from over 10,000+ images using the Kaggle Dog Breed Identification dataset.

🚀 What We Used
Python 🐍

TensorFlow 2.x

TensorFlow Hub

Keras API

Convolutional Neural Networks (CNNs)

Transfer Learning

Matplotlib & Seaborn for visualization

NumPy & Pandas for data wrangling

🧠 Why This Project Matters
This isn't just a fun dog app. Multi-class image classification is one of the core use cases in real-world AI applications:

Tesla uses it for self-driving vision

Airbnb uses it to tag and recommend listings

Hospitals use it for medical imaging

So this project mimics what data scientists and AI engineers do in real industry settings.

🔁 Project Workflow
Here’s the full deep learning pipeline we followed:

📥 Get Data

Download and unzip the dataset from Kaggle

Visualize the class distribution

🔧 Preprocess Data

Turn image files into tensors

Resize and normalize images

Create training, validation, and test sets

Prepare image/label pairings (X, y)

🧠 Build Model (Transfer Learning)

Load a pre-trained model from TensorFlow Hub (e.g., EfficientNet, MobileNet)

Freeze the base layers

Add custom dense layers for our dog breeds

Compile with categorical_crossentropy and Adam optimizer

📈 Train Model

Use ModelCheckpoint, EarlyStopping, and TensorBoard for monitoring

Train using .fit() and monitor loss & accuracy

📊 Evaluate Model

Predict on validation and test sets

Plot confusion matrix

Display top 5 predictions per image

Check wrong predictions (false positives/negatives)

🔁 Improve Model

Experiment with data augmentation

Unfreeze and fine-tune layers

Use learning rate schedules

💾 Save & Export Model

Save to .h5 and .pb formats

Reload and test predictions

🖼 Sample Outputs
🐕 Input Image	🔍 Predicted Breed
English Bulldog
Siberian Husky
Beagle
📁 Folder Structure
bash
Copy
Edit
/dog-breed-classifier
│
├── dataset/
│   ├── train/
│   ├── test/
│
├── models/
│   ├── best_model.h5
│
├── notebooks/
│   ├── training.ipynb
│
├── dog_classifier.py
├── utils.py
├── README.md
🧪 Results
Metric	Score
Accuracy (Top-1)	89%
Accuracy (Top-5)	96%
Loss	~0.22
🔮 Future Improvements
Deploy model to a web app using Streamlit or Flask

Allow real-time camera input for on-the-go predictions

Add mobile deployment via TensorFlow Lite

🙌 Acknowledgements
Kaggle for the dataset

TensorFlow Team for great documentation and open-source tools

The Deep Learning community 🧠💙

📬 Let’s Connect!
If you’re a recruiter, ML engineer, or someone who loves dogs and AI — I’d love to connect!
📩 danielnicholasdibal@gmail.com
🌐 Portfolio
🐦 Twitter
💼 LinkedIn

