
import numpy as nmp 
import pandas as pd
import os
import seaborn as sea
import matplotlib.pyplot as plt

field = "Pais de Proveniencia"
filename = "web_imp_08012019.txt"
# Get first 6 lines
data=open("web_imp_08012019.txt", "r")
print(data)
with open(filename) as file:
    lines = [next(file) for x in range(6)]
    print(lines)
    print(file)

