# Text Generation using GenAI (FastAPI & FLAN-T5)
### Check this out (view deployed project) 
https://adithya634-text2textgenaimodel.hf.space/docs#/default/generate_generate_get

as Flan-ts-small is a small model it only generates small amount of text.. 


## 🚀 Project Overview
This project is a **FastAPI-based Text Generation API** that leverages Google's **FLAN-T5** model to generate text based on user input. It is containerized using Docker for easy deployment.

## 📌 Features
- FastAPI framework for handling API requests
- Uses **FLAN-T5** (google/flan-t5-small) model from Hugging Face
- Dockerized for seamless deployment
- Supports text generation via API endpoint

---

## 🛠️ Setup & Installation

### 1️⃣ **Clone the Repository**
```sh
git clone https://github.com/your-username/text-generation-api.git
cd text-generation-api
```

### 2️⃣ **Create a Virtual Environment (Optional but Recommended)**
```sh
python -m venv venv
source venv/bin/activate  # On macOS/Linux
venv\Scripts\activate    # On Windows
```

### 3️⃣ **Install Dependencies**
```sh
pip install -r requirements.txt
```

### 4️⃣ **Run the FastAPI Server**
```sh
uvicorn app:app --host 0.0.0.0 --port 7860 --reload
```

---

## 🐳 Running with Docker

### 1️⃣ **Build the Docker Image**
```sh
docker build -t textgen-app .
```

### 2️⃣ **Run the Container**
```sh
docker run -p 7860:7860 textgen-app
```

---

## 🔥 API Endpoints

### **1️⃣ Home Route**
- **Endpoint:** `GET /`
- **Response:**
```json
{
  "message": "Hello, Welcome to Flan-T5 API!"
}
```

### **2️⃣ Text Generation Route**
- **Endpoint:** `GET /generate`
- **Query Parameter:** `text` (string)
- **Example Request:**
```sh
curl "http://localhost:7860/generate?text=Explain%20quantum%20computing"
```
- **Example Response:**
```json
{
  "output": "Quantum computing uses quantum bits, or qubits, to perform calculations exponentially faster."
}
```

---

## 📦 Project Structure
```
├── app.py             # FastAPI application
├── Dockerfile         # Docker configuration
├── requirements.txt   # Python dependencies
├── README.md          # Project documentation
└── ...
```

---

## 📌 Dependencies
- **FastAPI** (for building the API)
- **Uvicorn** (for ASGI server)
- **Transformers** (for FLAN-T5 model)

Install them using:
```sh
pip install fastapi uvicorn transformers
```

---

## 🤝 Contributing
Feel free to fork the repo, create an issue, or submit a pull request to improve the project!

---

## 📜 License
This project is **open-source** and available under the **MIT License**.

