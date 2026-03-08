# LangChain Practice

A LangChain project using Ollama for local LLM inference.

## Quick Setup (One Command!)

```bash
make setup && make run
```

## What It Does

- Creates a virtual environment
- Installs all dependencies
- Runs your application

## Manual Setup

If you don't have `make` installed:

```bash
# Setup
python3 -m venv venv
source venv/bin/activate
pip install -e .

# Run
python main.py
```

## Requirements

- Python 3.12+
- Ollama installed with `phi4-mini:3.8b` model
- Make (optional, but recommended)

### Installing Make

**macOS:**
```bash
xcode-select --install
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt-get update
sudo apt-get install build-essential
```

**Linux (Fedora/RHEL):**
```bash
sudo dnf install make
```

**Windows:**
```bash
choco install make
# Or use WSL (Windows Subsystem for Linux)
```

## Usage on New Device

1. Clone the repository:
   ```bash
   git clone <your-repo-url>
   cd langchain-practice
   ```

2. Run setup and start:
   ```bash
   make setup && make run
   ```

That's it! 🎉

## Other Commands

- `make install` - Install/update dependencies only
- `make run` - Run the application
- `make clean` - Remove virtual environment and cache files

## Managing Dependencies Across Devices

When you install a new package on one device:

**Device 1 (adding new dependency):**
```bash
# Activate virtual environment
source venv/bin/activate

# Install new package
pip install package-name

# Add it to pyproject.toml dependencies section manually, or
pip freeze > requirements.txt  # Optional: export all packages

# Commit and push changes
git add pyproject.toml
git commit -m "Add package-name dependency"
git push
```

**Device 2 (getting new dependency):**
```bash
# Pull latest changes
git pull

# Update dependencies
make install

# Or manually:
source venv/bin/activate
pip install -e .
```

The dependencies are managed in `pyproject.toml`, so all devices will sync automatically when you run `make install` after pulling.
# langchain-world
