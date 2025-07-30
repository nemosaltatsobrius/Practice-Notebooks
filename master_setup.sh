#!/bin/bash

# Check if project name is provided
if [ $# -eq 0 ]; then
    echo "Usage: ./master_setup.sh <project_folder_name>"
    echo "Example: ./master_setup.sh Swear_Word_Omitence"
    exit 1
fi

PROJECT_NAME=$1

# Check if project folder exists
if [ ! -d "$PROJECT_NAME" ]; then
    echo "Error: Project folder '$PROJECT_NAME' does not exist"
    exit 1
fi

echo "🔧 Setting up project: $PROJECT_NAME"
cd "$PROJECT_NAME"

echo "🔧 Creating virtual environment 'myenv'..."
python -m venv myenv

echo "🔄 Activating virtual environment..."
source myenv/Scripts/activate

echo "📦 Installing requirements..."
pip install --upgrade pip

# Check if requirements.txt exists in parent directory
if [ -f "../requirements.txt" ]; then
    pip install -r ../requirements.txt
    echo "📚 Registering ipykernel..."
else
    echo "Warning: requirements.txt not found in parent directory"
    echo "Installing basic packages..."
    pip install jupyter ipykernel
    echo "📚 Registering ipykernel..."
fi
python -m ipykernel install --user --name="${PROJECT_NAME}_env" --display-name "Python (${PROJECT_NAME})"

echo "📝 Creating Jupyter launch script..."
cat > launch_jupyter.sh << 'EOF'
#!/bin/bash

# Check if myenv exists
if [ ! -d "myenv" ]; then
    echo "❌ Virtual environment 'myenv' not found!"
    echo "Run the setup script first: ../master_setup.sh $(basename $(pwd))"
    exit 1
fi

echo "🚀 Starting Jupyter for $(basename $(pwd)) project..."
echo "🔄 Activating virtual environment..."
source myenv/Scripts/activate

echo "📚 Launching Jupyter Notebook..."
echo "🌐 Jupyter will open in your browser shortly..."
echo "⚠️  Press Ctrl+C to stop Jupyter when done"
echo ""

jupyter notebook
EOF

chmod +x launch_jupyter.sh

echo "✅ Done. Select 'Python (${PROJECT_NAME})' in Jupyter kernel list."
echo "📁 Virtual environment created in: $(pwd)/myenv"
echo "🚀 To launch Jupyter web interface, run: ./launch_jupyter.sh"