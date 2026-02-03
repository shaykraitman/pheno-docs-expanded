# Pheno Knowledge Base Expanded

This repository contains the **expanded version** of the Human Phenotype Project (HPP) documentation for researchers, featuring an interactive AI chatbot.

## 🚀 Quick Start

### Prerequisites

1. **Quarto** - [Install Quarto](https://quarto.org/docs/get-started/)
2. **Python dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

### Setup API Key (Required for Chatbot)

The chatbot requires an OpenRouter API key:

1. Copy the example environment file:
   ```bash
   cp env.example .env
   ```

2. Get your API key from [OpenRouter](https://openrouter.ai/keys)

3. Edit `.env` and add your real API key:
   ```bash
   nano .env
   ```

🔒 **Security Note:** The `.env` file is gitignored and will never be committed.

## 🏗️ Building and Deploying

### Option 1: Full Deployment (Recommended)

```bash
./deploy.sh
```

This script will:
- Create the knowledge base context from all documentation
- Inject your API key into the chatbot widget
- Build the Quarto site
- Restore the placeholder (so the key isn't committed)
- Output to `docs-expanded/`

### Option 2: Manual Build

```bash
# 1. Update chatbot knowledge base
./create-knowledge-base.sh

# 2. Build the site
cd pheno_knowledge_base_expanded
quarto render
cd ..

# 3. Preview locally
cd docs-expanded
python3 -m http.server 8000
```

⚠️ **Note:** Manual build requires manually injecting the API key from `.env` into the chatbot widget.

## 📦 Deployment to GitHub Pages

1. Build the site: `./deploy.sh`
2. Configure GitHub Pages to serve from the `docs-expanded/` folder:
   - Go to Settings → Pages
   - Source: Deploy from a branch
   - Branch: `main` (or your default branch)
   - Folder: `/docs-expanded`
3. Push your changes (the API key is safely excluded via `.gitignore`)

## 🤖 AI Chatbot Features

- **Purple button** in bottom-right corner on all pages
- Answers questions **only from website documentation**
- No backend server required (works on GitHub Pages)
- Powered by OpenRouter API

## 📝 Repository Structure

```
pheno-docs-expanded/
├── pheno_knowledge_base_expanded/  # Quarto site source
│   ├── datasets/                   # Dataset documentation (Jupyter notebooks)
│   ├── _quarto.yml                 # Site configuration
│   └── ...                         # Other content files
├── deploy.sh                       # Main deployment script
├── create-knowledge-base.sh        # Creates chatbot knowledge base
├── env.example                     # API key template
├── requirements.txt                # Python dependencies
└── docs-expanded/                  # Built site (generated, not in git)
```

## 🔄 Updating Content

1. Edit files in `pheno_knowledge_base_expanded/`
2. Run `./deploy.sh` to rebuild
3. Commit and push changes
4. GitHub Pages will automatically serve the updated `docs-expanded/` folder

## 💡 Tips

- **Preview locally** before deploying:
  ```bash
  cd pheno_knowledge_base_expanded
  quarto preview
  ```

- **Update chatbot knowledge** when you change documentation:
  ```bash
  ./create-knowledge-base.sh
  ```

- **Keep API key safe**: Never commit `.env` file!

## 📚 Documentation

For more details about the Human Phenotype Project, visit the published site.

## Contributing

- Updates should be made via a PR
- Please separate commits for source changes from rendering/builds
