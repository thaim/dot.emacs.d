# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is a highly modular Emacs configuration using `leaf.el` as the configuration framework and `init-loader.el` for file organization. The configuration is structured to support both package management systems (ELPA and el-get) with versioned directories.

### Core Structure

- **init.el**: Main entry point that sets up leaf.el, package archives, and loads modular configurations via init-loader
- **inits/**: Contains 25+ modular configuration files organized by functionality (e.g., `11-programming.el`, `12-skk.el`)
- **custom.el**: Custom variables and API tokens (contains sensitive information)
- **Package Management**: Dual system using both ELPA and el-get with versioned directories (`v29.3/`)

### Configuration Organization

**Note**: This configuration is currently undergoing consolidation. The init-loader file splitting approach is being unified, so avoid creating new fine-grained file splits in the `inits/` directory.

Configuration files in `inits/` follow a naming convention:
- `00-*`: Core initialization and key bindings
- `01-*`: Display and appearance
- `02-*`: Cache and file management
- `05-*`: UI enhancements (neotree, popwin)
- `10-*`: Development tools (company, flycheck, git)
- `11-*`: Programming language support
- `12-*`: Input methods and utilities
- `21-*`: Document formats (LaTeX)
- `30-*`: Major features (org-mode, howm note-taking)
- `40-*`: System integration
- `50-*`: Custom utilities

## Common Commands

### Package Management
```bash
# Clean compiled files and caches
./clean

# Full clean including downloaded packages (dangerous)
./clean -f
```

### Setup Requirements
```elisp
;; Run after first installation
M-x all-the-icons-install-fonts
```

### Key Configuration Areas

**API Tokens**: Copy `custom.el.template` to `custom.el` and configure:
- OpenAI API token for org-ai
- Todoist API token
- Wakatime API key

**Font Setup**: Uses HackGen font if available, with fallback detection

**Language Support**: Comprehensive support for 15+ programming languages including:
- Go (with company-go, lsp-mode)
- Rust (with cargo integration, rust-analyzer)
- Python (with lsp-pyright)
- Web technologies (TypeScript, Vue.js, HTML/CSS)
- Infrastructure (Terraform, Ansible, Dockerfile)

## Development Workflow

The configuration uses LSP Mode extensively with language-specific hooks for formatting, linting, and completion. GitHub Copilot is integrated via el-get for AI-assisted coding.

### Key Features
- **Note-taking**: howm integration with org-mode for `.howm` files
- **Japanese Input**: ddskk with custom dictionary setup in `etc/skk/`
- **Project Management**: LSP Mode + company-mode for code completion
- **Version Control**: Magit integration
- **File Management**: Neotree sidebar with all-the-icons

### Cache and Data Directories
- `cache/`: Runtime caches (howm, skk, transient)
- `etc/`: Static configuration data and dictionaries
- `eln-cache/`: Native compilation cache
- `elpa/` and `v29.3/el-get/`: Package installations

## File Modification Guidelines

When modifying configuration:
1. Edit existing files in `inits/` directory rather than creating new splits (configuration is being consolidated)
2. Use `leaf` configuration blocks for new packages
3. Sensitive data goes in `custom.el` (never commit tokens)
4. Language-specific configuration belongs in `11-programming.el`
5. Run `./clean` to remove compiled files during development

**Important**: Avoid creating new fine-grained file splits as the configuration is moving away from the init-loader splitting approach toward consolidation.

The configuration auto-compiles `.el` files and uses init-loader's byte-compilation for performance.