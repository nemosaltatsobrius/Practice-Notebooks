#!/bin/bash

# Check if project name is provided
if [ $# -eq 0 ]; then
    echo "Usage: ./master_setup.sh <project_folder_name>"
    echo "Example: ./master_setup.sh Swear_Word_Omitence"
    exit 1
fi

# Remove trailing slash if present
PROJECT_NAME="${1%/}"

# Check for spaces in project name
if [[ "$PROJECT_NAME" =~ \  ]]; then
    echo "❌ Error: Project name cannot contain spaces."
    echo "👉 Please use underscores (_) or dashes (-) instead of spaces."
    echo "Example: ./master_setup.sh Face_Detection_Self_TS"
    exit 1
fi

# Check for invalid characters in kernel name
if [[ ! "$PROJECT_NAME" =~ ^[a-zA-Z0-9._-]+$ ]]; then
    echo "❌ Error: Invalid project name for Jupyter kernel."
    echo "👉 Allowed characters: letters, numbers, hyphen (-), underscore (_), and period (.)"
    exit 1
fi

# Check if project folder exists
if [ ! -d "$PROJECT_NAME" ]; then
    echo "❌ Error: Project folder '$PROJECT_NAME' does not exist"
    exit 1
fi

echo "🔧 Setting up project: $PROJECT_NAME"
cd "$PROJECT_NAME"

echo "🔧 Creating virtual environment 'myenv'..."
python -m venv myenv

echo "🔄 Activating virtual environment..."
source myenv/Scripts/activate

echo "📦 Installing requirements..."
python -m pip install --upgrade pip

# Install from requirements.txt or install base packages
if [ -f "../requirements.txt" ]; then
    pip install -r ../requirements.txt
    echo "📚 Registering ipykernel..."
else
    echo "⚠️ Warning: requirements.txt not found in parent directory"
    echo "📦 Installing basic packages (jupyter, ipykernel)..."
    pip install jupyter ipykernel
    echo "📚 Registering ipykernel..."
fi

# Register sanitized kernel name
python -m ipykernel install --user --name="${PROJECT_NAME}" --display-name "Python (${PROJECT_NAME})"

echo "📝 Creating Jupyter launch script..."
cat > launch_jupyter.sh << 'EOF'
#!/bin/bash

# Check if myenv exists
if [ ! -d "myenv" ]; then
    echo "❌ Virtual environment 'myenv' not found!"
    echo "👉 Run the setup script first: ../master_setup.sh $(basename $(pwd))"
    exit 1
fi

echo "🚀 Starting Jupyter for $(basename $(pwd)) project..."
echo "🔄 Activating virtual environment..."
source myenv/Scripts/activate

echo "Launching Jupyter Notebook..."
echo "🌐 Jupyter will open in your browser shortly..."
echo "⚠️  Press Ctrl+C to stop Jupyter when done"
echo ""

jupyter notebook
EOF

chmod +x launch_jupyter.sh

echo "✅ Setup complete!"
echo "📁 Virtual environment created in: $(pwd)/myenv"
echo "🧠 Kernel registered as: ${PROJECT_NAME}"
echo "🚀 To launch Jupyter Notebook, run: ./launch_jupyter.sh"
echo "🧪 In Jupyter, select: Python (${PROJECT_NAME})"