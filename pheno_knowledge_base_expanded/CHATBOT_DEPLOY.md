# Chatbot Deployment Guide

Simple chatbot that answers ONLY from your website content.

## Files

**Essential files:**
- `chatbot-widget-simple.html` - Chat widget (included on all pages)
- `knowledge-base-context.txt` - Your website content (128KB)
- `../.env` - OpenRouter API key (gitignored, NOT committed)
- `../deploy.sh` - Secure deployment script
- `../create-knowledge-base.sh` - Script to update content

## 🔒 Security: API Key Setup

**The API key is stored securely and NEVER committed to git.**

### First-time setup:

```bash
cd /home/ec2-user/workspace/pheno-docs

# Copy the example file
cp env.example .env

# Edit .env and add your real API key
nano .env
```

Your `.env` file should look like:
```
OPENROUTER_API_KEY=sk-or-v1-your-actual-key-here
```

✅ The `.env` file is gitignored  
✅ Your API key will never be pushed to GitHub  
✅ The deploy script injects the key during build  

## How It Works

1. Widget loads on every page
2. Fetches `knowledge-base-context.txt`
3. Sends content + question to OpenRouter API
4. AI answers ONLY from your content

## 🚀 Deploy to GitHub Pages

**Recommended: Use the deploy script**

```bash
cd /home/ec2-user/workspace/pheno-docs

# Build everything (updates content, injects API key, builds site)
./deploy.sh

# Commit and push the OUTPUT only (API key is in docs-expanded/, not source)
git add docs-expanded/
git commit -m "Update chatbot"
git push origin expanded-knowledge-base
```

**What the deploy script does:**
1. Loads API key from `.env`
2. Updates chatbot content from website
3. Injects API key into the built site
4. Builds the site with `quarto render`
5. Restores placeholder in source code (so you don't commit the key)

## Update Content

When you update your website content:

```bash
cd /home/ec2-user/workspace/pheno-docs
./deploy.sh  # This updates everything automatically
```

Or manually:
```bash
./create-knowledge-base.sh
cd pheno_knowledge_base_expanded
quarto render
```

## Costs

- ~$0.04 per question (includes ~13K tokens of context)
- 1000 questions ≈ $40/month
- Uses Claude 3.5 Sonnet via OpenRouter

## Features

✅ No backend server needed
✅ Works on GitHub Pages
✅ Answers ONLY from website content
✅ No hallucinations
✅ Mobile responsive
✅ Appears on every page

---

That's it! Questions? Check the widget code or OpenRouter docs.


