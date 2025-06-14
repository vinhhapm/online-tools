#!/bin/zsh

# Find and update all HTML files in all directories
find . -type f -name "*.html" -exec sed -i '' 's|<base href="/online-tools/">|<base href="/">|g' {} +

# Fix relative paths in all HTML files
find . -type f -name "*.html" -exec sed -i '' 's|src="images/|src="/images/|g' {} +
find . -type f -name "*.html" -exec sed -i '' 's|href="images/|href="/images/|g' {} +
find . -type f -name "*.html" -exec sed -i '' 's|src="js/|src="/js/|g' {} +
find . -type f -name "*.html" -exec sed -i '' 's|href="js/|href="/js/|g' {} +
find . -type f -name "*.html" -exec sed -i '' 's|href="css/|href="/css/|g' {} +
find . -type f -name "*.html" -exec sed -i '' 's|content="https://emn178.github.io/online-tools/|content="/|g' {} +

# Fix paths in script tags
find . -type f -name "*.html" -exec sed -i '' 's|<script src="js/|<script src="/js/|g' {} +
find . -type f -name "*.html" -exec sed -i '' 's|<link rel="stylesheet" href="css/|<link rel="stylesheet" href="/css/|g' {} +

# Update contact URL
find . -type f -name "*.html" -exec sed -i '' 's|href="https://github.com/emn178/online-tools/issues">Contact</a>|href="mailto:vinhha.orb@gmail.com">Contact</a>|g' {} +

# Remove any double slashes in paths (except for http://)
find . -type f -name "*.html" -exec sed -i '' 's|([^:])//|\\1/|g' {} +
