# 🚀 Setup Guide - K8S Guardian

## Quick Setup (5 minutes)

### Step 1: Clone Repository
```bash
git clone https://github.com/yourusername/k8s-guardian.git
cd k8s-guardian
```

### Step 2: Open in Browser
```bash
# Option A: Direct open
open index.html

# Option B: With Python
python3 -m http.server 8080
# Visit http://localhost:8080

# Option C: With Node.js
npx http-server -p 8080
# Visit http://localhost:8080
```

### Step 3: Start Using
1. Paste Kubernetes YAML
2. Click "RUN COMPREHENSIVE SCAN"
3. Review findings
4. Apply auto-fix if needed
5. Export report

---

## GitHub Pages Setup

### Enable GitHub Pages
1. Go to repository **Settings**
2. Navigate to **Pages** section
3. Select **main** branch
4. Click **Save**
5. Wait 2-3 minutes
6. Access at: `https://yourusername.github.io/k8s-guardian`

### Custom Domain (Optional)
1. Add `CNAME` file with your domain
2. Configure DNS with GitHub Pages IP
3. Enable **Enforce HTTPS**

---

## Development Setup

### Prerequisites
- Modern browser (Chrome 90+, Firefox 88+, Safari 14+)
- Text editor (VS Code recommended)
- Git

### Recommended VS Code Extensions
```json
{
  "recommendations": [
    "esbenp.prettier-vscode",
    "dbaeumer.vscode-eslint",
    "ritwickdey.liveserver",
    "formulahendry.auto-close-tag"
  ]
}
```

### Local Development
```bash
# 1. Fork & clone
git clone https://github.com/yourusername/k8s-guardian.git
cd k8s-guardian

# 2. Create branch
git checkout -b feature/my-feature

# 3. Start live server
# (Use VS Code Live Server extension)

# 4. Make changes to index.html

# 5. Test in browser
# - Chrome DevTools
# - Responsive mode
# - Console for errors

# 6. Commit changes
git add .
git commit -m "feat: add new feature"

# 7. Push & create PR
git push origin feature/my-feature
```

---

## Testing Checklist

### Browser Testing
- [ ] Chrome (latest)
- [ ] Firefox (latest)
- [ ] Safari (latest)
- [ ] Edge (latest)

### Responsive Testing
- [ ] Mobile (320px - 480px)
- [ ] Tablet (481px - 768px)
- [ ] Desktop (769px+)

### Feature Testing
- [ ] YAML parsing
- [ ] Security scanning
- [ ] Auto-fix engine
- [ ] JSON export
- [ ] PDF export
- [ ] Dark mode toggle
- [ ] Config persistence
- [ ] Auto-validate
- [ ] Mobile controls

### Sample YAMLs
Test with:
```yaml
# 1. Minimal
apiVersion: v1
kind: Pod
metadata:
  name: test

# 2. Complex Deployment
# (Use sample from app)

# 3. Invalid YAML
# (Test error handling)

# 4. Multi-document
---
apiVersion: v1
kind: Service
---
apiVersion: apps/v1
kind: Deployment
```

---

## Troubleshooting

### Issue: Page won't load
**Solution:**
- Check browser console for errors
- Ensure all CDN links are accessible
- Try incognito/private mode
- Clear browser cache

### Issue: PDF export fails
**Solution:**
- Wait 2-3 seconds for jsPDF to load
- Check browser console
- Try smaller YAML (< 200 findings)

### Issue: Auto-fix not working
**Solution:**
- Ensure YAML is valid
- Check fix is marked as `autoFixable: true`
- Review console for errors
- Test with sample YAML

### Issue: LocalStorage not persisting
**Solution:**
- Enable cookies/localStorage in browser
- Check browser privacy settings
- Clear cache and reload

---

## Deployment Options

### 1. GitHub Pages (Free)
- Pros: Free, easy, SSL
- Cons: Public repos only

### 2. Netlify (Free)
```bash
# netlify.toml
[build]
  publish = "."
```
Deploy: Drag & drop to Netlify

### 3. Vercel (Free)
```bash
vercel --prod
```

### 4. Self-Hosted
```bash
# Nginx config
server {
  listen 80;
  server_name k8s-guardian.example.com;
  root /var/www/k8s-guardian;
  index index.html;
}
```

---

## CI/CD Integration

### GitHub Actions
```yaml
name: Deploy
on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: .
```

### Pre-commit Hook
```bash
# .git/hooks/pre-commit
#!/bin/bash
echo "Running checks..."

# Check for console.log in production
if grep -r "console.log" index.html; then
  echo "Error: Remove console.log before commit"
  exit 1
fi

echo "All checks passed!"
```

---

## Performance Optimization

### Enable Compression
```nginx
# Nginx
gzip on;
gzip_types text/html application/javascript text/css;
```

### Cache CDN Resources
```html
<link rel="preconnect" href="https://cdn.jsdelivr.net">
<link rel="dns-prefetch" href="https://unpkg.com">
```

### Lazy Load Images
```html
<img loading="lazy" src="screenshot.png">
```

---

## Security Best Practices

1. **HTTPS Only**: Always use HTTPS
2. **CSP Headers**: Add Content Security Policy
3. **No Secrets**: Never commit API keys
4. **Sanitize Input**: Escape user-provided YAML
5. **Update Dependencies**: Keep CDN links current

---

## Support

Need help?
- 📖 Read [README.md](README.md)
- 💬 Join [Discussions](https://github.com/yourusername/k8s-guardian/discussions)
- 🐛 Report [Issues](https://github.com/yourusername/k8s-guardian/issues)
- 📧 Email: your.email@example.com

---

**Ready to secure Kubernetes?** Let's go! 🚀
