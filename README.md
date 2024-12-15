# Tiro

A monorepo project containing Swift and Python components, with future web development capabilities.

## Project Structure

```
Tiro/
├── Package.swift          # Swift package definition
├── Sources/              # Swift source code
│   └── Tiro/            # Main Swift module
├── Tests/               # Swift tests
│   └── TiroTests/       # Swift test suite
├── python/              # Python module
│   ├── requirements.txt # Python dependencies
│   └── tests/          # Python tests
└── web/                # Future web development
```

## Setup

### Swift
1. Open the project in Xcode by opening `Package.swift`
2. Build and run tests using Xcode or:
   ```bash
   swift build
   swift test
   ```

### Python
1. Set up a virtual environment (recommended):
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Unix/macOS
   ```
2. Install dependencies:
   ```bash
   pip install -r python/requirements.txt
   ```
3. Run tests:
   ```bash
   pytest python/tests/
   ```

## Development

- Follow TDD practices for both Swift and Python components
- Swift files should be created under appropriate directories in `Sources/` or `Tests/`
- Python files should be placed under the `python/` directory
- Web development files (future) will go under the `web/` directory 