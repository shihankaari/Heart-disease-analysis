
---

## 📊 Exploratory Data Analysis

### ✔ Heart Disease Prevalence
- **46.35%** patients have heart disease  
- **53.65%** do not  
(Balanced dataset, good for modeling.)

### ✔ Histograms of Key Features
Includes distributions for:
- Age  
- BMI  
- Systolic/Diastolic BP  
- Cholesterol  
- Heart Rate  
(Inserted inside `images/` folder.)

### ✔ Age vs Cholesterol Relationship
- Older individuals show higher cholesterol levels.
- High cholesterol points frequently correspond to Heart_Disease = 1.

### ✔ Cholesterol by Heart Disease (Boxplot)
- Patients with heart disease have **much higher median cholesterol**.
- Strong indicator of cardiovascular risk.

### ✔ Composite Risk Score
Risk score summary:
- Mean: **139.44**
- Median: **139.33**
- Maximum: **184**

### ✔ Correlation Heatmap — Top Correlations
Strongest risk indicators:
- Hypertension (**0.40**)  
- Age (**0.38**)  
- Cholesterol_Total (**0.37**)  
- Diabetes (**0.34**)  
- Previous_Heart_Attack (**0.24**)  

---

## 💡 Key Insights

- Cholesterol is one of the strongest predictors.
- Age significantly increases the likelihood of heart disease.
- Hypertension and diabetes strongly correlate with the target.
- Systolic BP alone is **not** a strong differentiator.
- Family history and previous heart attack increase risk.
- Physical_Activity has 20,109 missing values — needs imputation.

---

## 🤖 Modeling

### Algorithms used:
- Logistic Regression  
- Random Forest Classifier (best performer)

### Evaluation Metrics:
*(Add your real values here)*  
Example:  
- Accuracy: ~0.85  
- Precision: ~0.82  
- Recall: ~0.83  
- AUC: ~0.89  

### Confusion Matrix:
Included in `images/confusion_matrix.png`

---

## 🩺 Clinical Recommendations

- Screening programs for **Age > 50**
- Aggressive cholesterol and hypertension control
- Monitor diabetic patients for higher cardiac risk
- Lifestyle improvements: diet, exercise, stress control

---

## 🛠 Technical Recommendations

- Impute missing Physical_Activity values
- Use Random Forest or XGBoost as final model
- Add SHAP explanations for interpretability
- Perform hyperparameter tuning
- Validate model on an external dataset

---

## 📄 Final Report

The complete PDF report is available in:  
👉 `/reports/HEART_DISEASE_REPORT.pdf`

---

## ✨ Author
**Mohammed Shihan**

---

## ⭐ Show Your Support
If you like this project, give it a ⭐ on GitHub!
