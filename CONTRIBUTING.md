# Contributing to K8S Guardian

First off, thank you for considering contributing to K8S Guardian! 🎉

## How Can I Contribute?

### 🐛 Reporting Bugs

Before creating bug reports, please check existing issues. When creating a bug report, include:

- **Clear title and description**
- **Steps to reproduce**
- **Expected behavior**
- **Actual behavior**
- **Screenshots** (if applicable)
- **Browser/OS version**

### 💡 Suggesting Features

Feature requests are welcome! Please provide:

- **Use case**: Why is this feature needed?
- **Proposed solution**: How should it work?
- **Alternatives**: What alternatives have you considered?

### 🔧 Pull Requests

1. **Fork** the repo
2. **Create** a branch (`git checkout -b feature/AmazingFeature`)
3. **Make** your changes
4. **Test** thoroughly
5. **Commit** (`git commit -m 'Add amazing feature'`)
6. **Push** (`git push origin feature/AmazingFeature`)
7. **Open** a Pull Request

### 📝 Code Style

- Use **ES6+** JavaScript
- Follow existing **naming conventions**
- Add **comments** for complex logic
- Keep **functions small** and focused
- Use **meaningful variable names**

### 🧪 Testing

- Test in multiple browsers (Chrome, Firefox, Safari, Edge)
- Test responsive design (mobile, tablet, desktop)
- Verify auto-fix doesn't break YAML
- Check export functionality (JSON/PDF)

### 📚 Documentation

- Update README.md for new features
- Add inline comments for complex code
- Update security checks list
- Document breaking changes

## Project Structure

```
k8s-guardian/
├── index.html          # Main application
├── README.md           # Documentation
├── LICENSE             # MIT License
└── CONTRIBUTING.md     # This file
```

## Adding New Security Checks

To add a new check:

1. **Add to `enabledChecks` object:**
```javascript
security: {
  // ... existing checks
  newCheck: true  // Add your check
}
```

2. **Implement in `validateManifests()`:**
```javascript
if (checks.security.newCheck && !content.includes('field:')) {
  issues.high.push({
    category: 'Security',
    title: 'New Check',
    message: 'Description',
    fix: 'Suggested fix',
    autoFixable: true,
    fixType: 'add-field',
    fixData: { field: 'fieldName', value: 'value' },
    impact: 'Impact description'
  });
}
```

3. **Add auto-fix logic (optional):**
```javascript
case 'add-field': {
  // Implement fix logic
  break;
}
```

4. **Test thoroughly**

5. **Update documentation**

## Adding Auto-Fix Logic

When adding auto-fix:

1. Set `autoFixable: true`
2. Specify `fixType` (replace, add-field, add-capabilities, etc.)
3. Provide `fixData` with necessary info
4. Implement in `applyAutoFix()` function
5. Test on various YAML structures
6. Verify indentation is preserved

## Code Review Process

1. All PRs require review
2. Changes must pass manual testing
3. Documentation must be updated
4. Breaking changes need discussion

## Community Guidelines

- **Be respectful** and inclusive
- **Assume good faith** in discussions
- **Focus on** constructive feedback
- **Help newcomers** get started

## Questions?

- Open a [Discussion](https://github.com/yourusername/k8s-guardian/discussions)
- Create an [Issue](https://github.com/yourusername/k8s-guardian/issues)
- Contact maintainer

---

**Thank you for contributing to K8S Guardian!** 🚀
