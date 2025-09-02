# Local RAG (HTML + Ollama)

This is a simple Retrieval-Augmented Generation (RAG) app that runs entirely on your computer.  
It compares documents like resumes and job postings, finds overlaps and gaps, and answers questions with sources.  
Everything runs locally using Ollama — no cloud, no Python needed.

---

## How it works
- **Embeddings:** Uses `nomic-embed-text` to convert text into vectors.  
- **Retrieval:** Finds the most relevant chunks with cosine similarity.  
- **LLM:** Uses `llama3` for responses.  
- **Privacy:** All processing stays on your machine.  

---

## Setup

### 1. Install Ollama
Download Ollama for Windows from [ollama.com](https://ollama.com).

### 2. Pull the models
```powershell
ollama pull llama3
ollama pull nomic-embed-text
