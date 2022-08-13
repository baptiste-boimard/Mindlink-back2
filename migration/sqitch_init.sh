# 0. je prends l'identité de postgres
export PGUSER=postgres

# 1. Création d'un utilisateur en BDD ocolis_admin (with login)
createuser mindlink --login --password

# 2. Création d'une BDD ocolis dont le propriétaire est ocolis_admin
createdb mindlink --owner mindlink

# 3. Initialiser Sqitch
sqitch init mindlink_sqitch --engine pg # on indique qu'on travaille avec postgres (pg)

# 4. Je crèe une version 1 pour ma BDD
sqitch add mindlink_v1_create_tables -n "Create tables"