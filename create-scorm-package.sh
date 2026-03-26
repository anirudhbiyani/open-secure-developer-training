#!/bin/bash

# Create SCORM package for Secure Developer Training

echo "Creating SCORM package..."

# Create a temporary directory for the package
PACKAGE_DIR="scorm-package"
rm -rf $PACKAGE_DIR
mkdir -p $PACKAGE_DIR

# Copy the main files
echo "Copying main training file..."
cp index.html $PACKAGE_DIR/

# Copy the manifest
echo "Copying SCORM manifest..."
cp imsmanifest.xml $PACKAGE_DIR/

# Copy all module directories with their content
echo "Copying social engineering module..."
cp -r social-engineering-training $PACKAGE_DIR/

echo "Copying secrets & credential management module..."
cp -r secrets-credential-management-training $PACKAGE_DIR/

echo "Copying supply chain & dependency security module..."
cp -r supply-chain-dependency-security-training $PACKAGE_DIR/

echo "Copying secure development lifecycle module..."
cp -r secure-development-lifecycle-training $PACKAGE_DIR/

echo "Copying secure data handling module..."
cp -r secure-data-handling-training $PACKAGE_DIR/

echo "Copying secure coding module..."
cp -r secure-coding-training $PACKAGE_DIR/

echo "Copying container & cloud security module..."
cp -r container-cloud-security-training $PACKAGE_DIR/

echo "Copying API security module..."
cp -r api-security-training $PACKAGE_DIR/

echo "Copying AI/LLM security module..."
cp -r ai-llm-security-training $PACKAGE_DIR/

# Create the ZIP file
echo "Creating ZIP package..."
cd $PACKAGE_DIR
zip -r ../secure-developer-training-scorm.zip *
cd ..

# Clean up
rm -rf $PACKAGE_DIR

echo "✅ SCORM package created: secure-developer-training-scorm.zip"
echo ""
echo "This package contains:"
echo "  - imsmanifest.xml (SCORM manifest)"
echo "  - index.html (main launcher)"
echo "  - All nine training modules in their directories"
echo ""
echo "You can now upload this ZIP file to any SCORM-compliant LMS!"