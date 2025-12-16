#!/bin/bash

echo "=========================================="
echo "K8S GUARDIAN - QUICK DEPLOYMENT SCRIPT"
echo "=========================================="
echo ""

# Step 1: Create index.html
echo "📝 Step 1: Creating index.html..."
echo ""
echo "⚠️  IMPORTANT: Copy your working HTML code"
echo ""
echo "Please paste your complete HTML file as 'index.html'"
echo "The HTML file from document index=2 should be used"
echo ""
read -p "Have you added index.html? (y/n): " confirm

if [ "$confirm" != "y" ]; then
    echo ""
    echo "❌ Please add index.html file first, then run this script again"
    exit 1
fi

# Check if index.html exists
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found!"
    echo ""
    echo "Please create index.html with your working code"
    exit 1
fi

echo "✅ index.html found!"
echo ""

# Step 2: Initialize Git
echo "📦 Step 2: Initializing Git repository..."
git init
git add .
git commit -m "Initial commit: K8S Guardian v1.0"
git branch -M main
echo "✅ Git initialized"
echo ""

# Step 3: Instructions
echo "=========================================="
echo "✅ SETUP COMPLETE!"
echo "=========================================="
echo ""
echo "🚀 Next Steps:"
echo ""
echo "1. Create GitHub repository:"
echo "   - Go to https://github.com/new"
echo "   - Name: k8s-guardian"
echo "   - Don't initialize with README"
echo ""
echo "2. Push to GitHub:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/k8s-guardian.git"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   - Settings > Pages"
echo "   - Source: main branch"
echo "   - Save"
echo ""
echo "4. Access your site:"
echo "   https://YOUR_USERNAME.github.io/k8s-guardian"
echo ""
echo "=========================================="
echo ""
echo "📚 Documentation:"
echo "   - README.md      - Project overview"
echo "   - SETUP.md       - Setup guide"
echo "   - DEPLOYMENT.md  - Deployment options"
echo ""
echo "✅ Your project is ready to deploy!"
echo ""
