# 🌐 Deployment Guide

## GitHub Pages (Recommended - Free)

### Step 1: Push to GitHub
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/yourusername/k8s-guardian.git
git push -u origin main
```

### Step 2: Enable Pages
1. Go to **Settings** > **Pages**
2. Source: **Deploy from branch**
3. Branch: **main** / **(root)**
4. Click **Save**

### Step 3: Access
URL: `https://yourusername.github.io/k8s-guardian`

---

## Netlify (Easy)

### Option A: Drag & Drop
1. Visit [netlify.com](https://netlify.com)
2. Drag folder to deploy
3. Done! Get URL

### Option B: CLI
```bash
npm install -g netlify-cli
netlify deploy --prod
```

---

## Vercel (Fast)

```bash
npm i -g vercel
vercel --prod
```

---

## Docker (Self-Hosted)

### Dockerfile
```dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
```

### Build & Run
```bash
docker build -t k8s-guardian .
docker run -p 8080:80 k8s-guardian
```

---

## Kubernetes (Ironic!)

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: k8s-guardian
spec:
  replicas: 2
  selector:
    matchLabels:
      app: k8s-guardian
  template:
    metadata:
      labels:
        app: k8s-guardian
    spec:
      containers:
      - name: nginx
        image: nginx:alpine
        ports:
        - containerPort: 80
        volumeMounts:
        - name: html
          mountPath: /usr/share/nginx/html
      volumes:
      - name: html
        configMap:
          name: k8s-guardian-html
---
apiVersion: v1
kind: Service
metadata:
  name: k8s-guardian
spec:
  type: LoadBalancer
  ports:
  - port: 80
    targetPort: 80
  selector:
    app: k8s-guardian
```

---

## Custom Domain

### GitHub Pages
1. Add `CNAME` file with domain
2. DNS: `A` record to `185.199.108.153`
3. Enable HTTPS in settings

### Netlify
1. Go to **Domain settings**
2. Add custom domain
3. Follow DNS instructions

---

## SSL/HTTPS

All platforms provide free SSL:
- **GitHub Pages**: Automatic
- **Netlify**: Automatic (Let's Encrypt)
- **Vercel**: Automatic
- **Self-hosted**: Use [Certbot](https://certbot.eff.org/)

---

## Monitoring

### Google Analytics
```html
<!-- Add before </head> -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_ID');
</script>
```

### Uptime Monitoring
- [UptimeRobot](https://uptimerobot.com) - Free
- [Pingdom](https://pingdom.com)
- [StatusCake](https://statuscake.com)

---

## CDN

Already using CDNs:
- jsDelivr (Tailwind)
- unpkg (Lucide)
- jsDelivr (js-yaml, jsPDF)

For additional files, use:
- **Cloudflare Pages**
- **GitHub CDN** (via raw.githubusercontent.com)

---

**Your app is now live! 🎉**
