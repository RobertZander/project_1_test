
# Define the root directory for the project
$projectRoot = "C:\Users\rober\Documents\project_1_test"

# Create the directory structure
$directories = @(
    "$projectRoot/src",           # Source code
    "$projectRoot/docs",          # Documentation
    "$projectRoot/tests",         # Test files
    "$projectRoot/config"         # Configuration files
)

# Create each directory
foreach ($dir in $directories) {
    if (-not (Test-Path -Path $dir)) {
        New-Item -ItemType Directory -Path $dir
        Write-Host "Created directory: $dir"
    } else {
        Write-Host "Directory already exists: $dir"
    }
}

# Create a basic .gitignore file
$gitignorePath = "$projectRoot/.gitignore"
$gitignoreContent = @"
# Ignore Python virtual environments
venv/

# Ignore environment variables file
.env

# Ignore Python cache files
__pycache__/
*.py[cod]

# Ignore VS Code workspace settings
.vscode/

# Ignore macOS system files
.DS_Store

# Ignore log files
*.log

# Ignore SQLite database files
*.sqlite3
"@
Set-Content -Path $gitignorePath -Value $gitignoreContent
Write-Host "Created .gitignore file: $gitignorePath"

# Create a basic README.md file
$readmePath = "$projectRoot/README.md"
$readmeContent = @"
# Project 1 Test

## Overview
This is a basic project setup for 'Project 1 Test'. This project contains source code, documentation, and test files.

## Directory Structure
- **src/**: Source code files.
- **docs/**: Project documentation.
- **tests/**: Test scripts and files.
- **config/**: Configuration files.

## Getting Started
1. Clone the repository.
2. Set up the virtual environment and install dependencies.
3. Run tests to ensure everything is working.

## Contribution
Please follow the contribution guidelines when submitting changes.

## License
This project is licensed under the MIT License.
"@
Set-Content -Path $readmePath -Value $readmeContent
Write-Host "Created README.md file: $readmePath"

# Create a basic requirements.txt file
$requirementsPath = "$projectRoot/requirements.txt"
$requirementsContent = @"
# List your project dependencies here
# Example:
# requests==2.25.1
# flask==1.1.2
"@
Set-Content -Path $requirementsPath -Value $requirementsContent
Write-Host "Created requirements.txt file: $requirementsPath"

Write-Host "Project setup completed successfully!"
