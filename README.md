# 🛡️ K8S Guardian v1.0

> **Advanced Kubernetes YAML Security Scanner** with Real-time Validation, Auto-Fix Engine, and Exportable Reports

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Version](https://img.shields.io/badge/version-1.0.0-green.svg)](https://github.com/yourusername/k8s-guardian)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

**Developed by:** Chandan Kumar

---

## 🌟 Features

- **50+ Security Checks** across 6 categories
- **Real-time Validation** with auto-validate mode
- **One-Click Auto-Fix** for common misconfigurations
- **Live Security Score** (0-100 with grade)
- **JSON & PDF Export** for reports
- **Configurable Rules** - enable/disable checks
- **Futuristic UI** with dark/hacking mode
- **Mobile Responsive** design
- **Zero Dependencies** - runs in browser

---

## 🚀 Quick Start

```bash
# Clone repository
git clone https://github.com/yourusername/k8s-guardian.git
cd k8s-guardian

# Open in browser
open index.html
```

**Or use with web server:**
```bash
python3 -m http.server 8080
# Visit http://localhost:8080
```

---

## 📖 Usage

1. **Paste YAML** - Drop Kubernetes manifests in editor
2. **Run Scan** - Click "RUN COMPREHENSIVE SCAN"
3. **Review Findings** - See Critical/High/Medium/Low issues
4. **Auto-Fix** - Apply fixes with one click
5. **Export** - Download JSON/PDF report

---

## 🔒 Security Categories

| Category | Checks | Auto-Fix |
|----------|--------|----------|
| Security | 15 | 10 |
| Resources | 5 | 2 |
| Reliability | 7 | 3 |
| Networking | 4 | 0 |
| Storage | 4 | 0 |
| Advanced | 5 | 0 |

**Total: 50+ checks, 15+ auto-fixable**

---

## 🎯 Key Checks

- ✅ Privileged containers
- ✅ Host namespaces (network/PID/IPC)
- ✅ Root user detection
- ✅ Capabilities management
- ✅ Resource limits/requests
- ✅ Health probes
- ✅ Image versioning
- ✅ Security contexts

---

## 📊 Export Formats

### JSON Report
```json
{
  "app": "K8S Guardian",
  "version": "1.0.0",
  "score": 85,
  "grade": "A",
  "totals": {
    "critical": 0,
    "high": 2,
    "medium": 3,
    "low": 5
  }
}
```

### PDF Report
- Executive summary
- Detailed findings table
- Severity classification
- Fix recommendations

---

## 🛠️ Tech Stack

- **HTML5** - Semantic markup
- **Tailwind CSS** - Styling
- **Vanilla JS** - No frameworks
- **js-yaml** - YAML parsing
- **jsPDF** - PDF generation
- **Lucide Icons** - UI icons

---

## 🤝 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/NewCheck`)
3. Commit changes (`git commit -m 'Add new check'`)
4. Push to branch (`git push origin feature/NewCheck`)
5. Open Pull Request

---

## 📝 Roadmap

### v1.1
- [ ] Multi-file scanning
- [ ] Custom rules engine
- [ ] Webhook support

### v1.2
- [ ] AI recommendations
- [ ] Compliance frameworks
- [ ] Historical analytics

---

## 📄 License

MIT License - see [LICENSE](LICENSE) file

---

## 🙏 Credits

- **Tailwind CSS** - Styling
- **Lucide** - Icons
- **js-yaml** - Parser
- **jsPDF** - PDF export
- **Kubernetes** - Best practices

---

## 📞 Contact

**Developer**: Chandan Kumar  
**GitHub**: [@yourusername](https://github.com/yourusername)

---

<div align="center">

**Made with ❤️ for the Kubernetes Community**

⭐ Star this repo if you find it useful!

</div>
