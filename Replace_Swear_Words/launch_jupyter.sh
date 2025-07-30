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
