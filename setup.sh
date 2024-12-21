#!/bin/bash

# Actualizar lista de paquetes
echo "Updating package list..."
sudo apt update

# Instalar dependencias de sistema
echo "Installing system dependencies..."
sudo apt install -y python3.12 python3.12-dev zlib1g zlib1g-dev libexpat1 libexpat1-dev build-essential

# Instalar Hydra
echo "Installing Hydra..."
sudo apt install -y hydra

# Instalar Ncrack
echo "Installing Ncrack..."
sudo apt install -y ncrack

# Verificar si pip está instalado; instalar si no lo está
if ! command -v pip3 &> /dev/null
then
    echo "pip3 not found, installing pip3..."
    sudo apt install -y python3-pip
fi

# Instalar netaddr
echo "Installing the netaddr library for Python..."
pip3 install netaddr

# Confirmación de la instalación completa
echo "Installation completed. All dependencies have been installed successfully."

# Informar que el archivo ejecutable está listo para ser ejecutado
echo "To run the file, use the command: ./RDPChecker7"
