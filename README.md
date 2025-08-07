# Machine Learning Notebooks

This repository contains a collection of Jupyter Notebooks exploring various machine learning concepts and techniques. Each notebook is designed to be a self-contained exploration of a specific topic.

## Project Structure

```
.
├── Exploring_CostFunction
├── Face_Detection_self_tf
├── Gradient_Descent_Simple
├── Image_Classification_TF
├── My_First_Notebook
├── Replace_Swear_Words
├── Transformers_Introduction
├── .gitignore
├── master_setup.sh
├── README.md
└── requirements.txt
```

## Notebooks

*   **Exploring_CostFunction**: Demonstrates the concept of cost functions in machine learning. It uses a linear regressor with custom cost functions (Sum of Squared Differences and Sum of Absolute Differences) to predict weather data.

*   **Face_Detection_self_tf**: This project is set up for a face detection task using TensorFlow, but does not yet contain a notebook.

*   **Gradient_Descent_Simple**: Provides a simple, from-scratch implementation of the gradient descent algorithm to find the minimum of a basic quadratic function.

*   **Image_Classification_TF**: A notebook that builds, trains, and evaluates a Convolutional Neural Network (CNN) using TensorFlow and Keras to classify images of faces as smiling or not.

*   **My_First_Notebook**: A basic notebook that loads weather data and demonstrates simple data manipulation and plotting with Pandas and Matplotlib.

*   **Replace_Swear_Words**: An incomplete notebook intended to use transformers to replace swear words in a given text.

*   **Transformers_Introduction**: Provides an introduction to the Hugging Face Transformers library. It showcases various pre-trained models for tasks like sentiment analysis, image classification, and speech recognition.

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