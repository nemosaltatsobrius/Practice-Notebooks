# Machine Learning Notebooks

This repository contains a collection of Jupyter Notebooks exploring various machine learning concepts and techniques. Each notebook is designed to be a self-contained exploration of a specific topic.

## Project Structure

```
.
├── Exploring_CostFunction
├── Gradient_Descent_Simple
├── My_First_Notebook
├── Replace_Swear_Words
├── Transformers_Introduction
├── .gitignore
├── master_setup.sh
├── README.md
└── requirements.txt
```

## Notebooks

* **Exploring_CostFunction**: This notebook demonstrates the concept of cost functions in machine learning. It uses a linear regressor with custom cost functions (Sum of Squared Differences and Sum of Absolute Differences) to predict weather data.

* **Gradient_Descent_Simple**: This notebook provides a simple implementation of gradient descent to find the minimum of a cost function.

* **My_First_Notebook**: This notebook appears to be a work in progress and does not yet contain any code.

* **Replace_Swear_Words**: This notebook is intended to use transformers to replace swear words in a given text. It is currently under development.

* **Transformers_Introduction**: This notebook provides an introduction to the Hugging Face Transformers library. It showcases various pre-trained models for tasks like sentiment analysis, image classification, and speech recognition.

## Getting Started

### Prerequisites

* Python 3
* Git

### Installation

This project includes a `master_setup.sh` script that automates the setup process for each notebook's environment.

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/your-repository.git
   cd your-repository
   ```

2. **Run the setup script for a specific project:**
   ```bash
   ./master_setup.sh <project_folder_name>
   ```
   For example, to set up the `Exploring_CostFunction` project, run:
   ```bash
   ./master_setup.sh Exploring_CostFunction
   ```
   This will create a virtual environment within the project folder, install the necessary dependencies, and create a script to launch Jupyter Notebook.

## Usage

1. **Navigate to the project directory:**
   ```bash
   cd <project_folder_name>
   ```

2. **Launch Jupyter Notebook:**
   ```bash
   ./launch_jupyter.sh
   ```

3. **Select the appropriate kernel:**
   Once Jupyter Notebook is open, select the kernel with the display name `Python (<project_folder_name>)`.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue if you have any suggestions or find any bugs.