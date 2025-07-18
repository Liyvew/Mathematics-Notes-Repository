# 数学笔记仓库 (Mathematics Notes Repository)

基于 Quarto 的数学学习笔记整理仓库。支持输出至 HTML、PDF/LaTeX、MS Word 等多种格式，包含完整的数学公式支持、定理环境、交叉引用等学术写作功能。

- [仓库主页](https://github.com/Liyvew/Lecture-Notes)
- [在线阅读](https://Liyvew.github.io/Lecture-Notes)

## 📚 笔记内容

### 代数学
- **交换代数 (Commutative Algebra)** - 基于 Atiyah & Macdonald 的《Introduction to Commutative Algebra》的学习笔记

### 计划添加的内容
- 抽象代数
- 实分析
- 复分析
- 拓扑学
- 微分几何
- 更多内容持续更新中...

## ✨ 功能特性

- 基于 Pandoc's Markdown 的完备数学写作语法
- 强大的交叉引用与定理环境系统
- HTML、PDF/LaTeX、MS Word 全格式输出
- TikZ 数学图表绘制支持
- 完整的数学公式渲染
- 文献引用管理
- GitHub Actions 自动生成在线版本

## 🚀 快速开始

### 在线阅读
直接访问 [在线版本](https://Liyvew.github.io/Lecture-Notes) 即可阅读所有笔记内容。

### 本地使用

#### 环境要求
- [Quarto CLI](https://github.com/quarto-dev/quarto-cli) - 文档渲染引擎
- LaTeX 发行版（推荐使用 `quarto install tinytex --update-path`）
- （可选）Python 环境用于数据可视化

#### 渲染笔记
```bash
# 渲染单个笔记为 HTML
quarto render commutative-algebra.qmd --to html

# 渲染为 PDF
quarto render commutative-algebra.qmd --to pdf

# 渲染整个网站
quarto render
```

## 📝 如何贡献

欢迎提出建议和改进！如果您发现错误或有改进建议，请：

1. 提交 Issue 报告问题
2. 或者 Fork 仓库并提交 Pull Request

## 📄 技术说明

本仓库基于 [Quarto](https://quarto.org/) 构建，支持：
- 完整的 LaTeX 数学公式
- 定理、证明等数学环境
- 交叉引用和文献管理
- 多种输出格式（HTML、PDF、Word 等）

## 📧 联系方式

如有问题或建议，欢迎通过 GitHub Issues 联系。

---

*本仓库持续更新中，感谢您的关注！*
