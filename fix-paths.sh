#!/bin/zsh

# Find and update all HTML files in all directories
find . -type f -name "*.html" -exec sed -i '' 's|<base href="/online-tools/">|<base href="/">|g' {} +

# Fix relative paths in all HTML files
find . -type f -name "*.html" -exec sed -i '' 's|src="images/|src="/images/|g' {} +
find . -type f -name "*.html" -exec sed -i '' 's|href="images/|href="/images/|g' {} +
find . -type f -name "*.html" -exec sed -i '' 's|src="js/|src="/js/|g' {} +
find . -type f -name "*.html" -exec sed -i '' 's|href="css/|href="/css/|g' {} +
