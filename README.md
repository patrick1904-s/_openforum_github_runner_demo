# GitHub Actions + Runners Demo 🚀  
**Auto-validated PR → Auto-merge → Auto-deploy Website**

This repository demonstrates how **GitHub Runners** and **GitHub Actions** work together to:
- Validate Pull Requests automatically
- Auto-merge valid PRs
- Auto-deploy a website using **GitHub Pages**

## 🧠 Demo Idea (In Short)

Anyone can:
1. Fork this repository
2. Add their name to the website
3. Open a Pull Request

### ✅ Rule
- The name **must be written in ALL CAPITAL LETTERS**

### ❌ If rule fails
- CI fails
- PR is blocked

### ✅ If rule passes
- PR is auto-merged
- Website is updated automatically

---

## 📁 Repository Structure

```text
.
├── site/
│   ├── index.html        # Website
│   └── names.txt         # List of accepted names
├── scripts/
│   └── check_caps.sh     # Validation script
└── .github/
    └── workflows/
        ├── validate.yml  # PR validation workflow
        └── deploy.yml    # GitHub Pages deployment

