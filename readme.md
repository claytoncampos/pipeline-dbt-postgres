# ambiente postgres (DW)
 export PASS=***

docker run --name some-postgres -e POSTGRES_PASSWORD=$PASS -p 5432:5432 -d postgres

# ambiente python (EL)
python3 -m venv .venv
source .venv/bin/activate
pip install psycopg2-binary sqlalchemy pandas
python3 import tables.py

# dbt
pip install dbt-postgres
dbt init <nome projeto>
cd <nome projeto>
export DBT_PROFILES_DIR=$(pwd)
atualiza arquivo dbt project.yml
conectar com o banco de dados
  criar arquivo profiles.yml
  testar com dbt debug

# modelagem (T) > postgres

## location



