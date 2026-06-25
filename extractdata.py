import pandas as pd
import os
from sqlalchemy import create_engine

def carrega_dados():
    pasta = "datasets"

    dfs = {}

    for arquivo in os.listdir(pasta):
        if arquivo.endswith(".csv"):
            nome = arquivo.replace(".csv", "")
            dfs[nome] = pd.read_csv(os.path.join(pasta, arquivo))
            
    return dfs
    
def dsa_executa_script_sql(dfs):

    engine = create_engine('postgresql://dev_olist:password123@localhost:5435/olist_database')

    for nome, df in dfs.items():
        df.to_sql(
            name=nome,
            con=engine,
            if_exists="replace",
            index=False
        )
        
    print('Executado com sucesso')
    

resultado = carrega_dados()
dsa_executa_script_sql(resultado)