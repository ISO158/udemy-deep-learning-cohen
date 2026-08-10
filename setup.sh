#!/bin/bash

echo "⏳ Iniciando a configuração do ambiente..."

# 1. Cria o ambiente virtual
echo "🛠️ Criando o ambiente virtual (.venv)..."
python -m venv .venv

# 2. Ativa o ambiente virtual (Caminho específico para Windows no Git Bash)
echo "🟢 Ativando o ambiente..."
source .venv/Scripts/activate

# 3. Atualiza o gerenciador de pacotes
echo "🔄 Atualizando o pip..."
python -m pip install --upgrade pip

# 4. Instala as bibliotecas base para Análise de Dados e Jupyter
echo "📚 Instalando bibliotecas base (NumPy, Pandas, Matplotlib, Jupyter)..."
pip install numpy pandas matplotlib seaborn jupyterlab ipykernel

# 5. Instala o PyTorch (Versão padrão)
echo "🔥 Instalando o PyTorch..."
pip install torch torchvision torchaudio

# 6. Instala o SciPy
echo " Instalando o ScyPy"
pip install scipy

# 7. Instala o Sympy
echo " Instalando o Sympy"
pip install sympy

# Vincula o ambiente ao VS Code / Jupyter
echo "🔗 Configurando o kernel interativo..."
python -m ipykernel install --user --name=.venv --display-name="Python (Deep Learning Cohen)"

echo "✅ Ambiente configurado com sucesso! Tudo pronto para codar."