Install via the SCGIS-Wales tap:

```bash
# Add the tap
brew tap SCGIS-Wales/homebrew-tap https://github.com/SCGIS-Wales/homebrew-tap.git

# Install dcert
brew install dcert

# Verify installation
dcert --version
```

To update to the latest version:

```bash
brew update
brew upgrade dcert

## groovyscope

Groovy 5/6 code intelligence (LSP and MCP) for AI coding agents such as Kiro CLI. See
[SCGIS-Wales/groovyscope](https://github.com/SCGIS-Wales/groovyscope).

```bash
brew install SCGIS-Wales/tap/groovyscope
groovyscope doctor
```

The formula installs the PyPI release (which bundles the engine JAR) and depends on `openjdk@21`. The
`groovyscope formula` workflow in this repository moves it to each new PyPI release daily, after installing
and testing it on macOS.
