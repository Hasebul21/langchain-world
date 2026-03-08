.PHONY: setup install run clean

# One command to set up everything and run
setup:
	@echo "🔧 Setting up environment..."
	python3 -m venv venv
	@echo "📦 Installing dependencies..."
	./venv/bin/pip install --upgrade pip
	./venv/bin/pip install -e .
	@echo "✅ Setup complete!"

# Install dependencies only
install:
	./venv/bin/pip install -e .

# Run the application
run:
	./venv/bin/python main.py

# Clean up virtual environment
clean:
	rm -rf venv
	rm -rf *.egg-info
	find . -type d -name __pycache__ -exec rm -rf {} +
