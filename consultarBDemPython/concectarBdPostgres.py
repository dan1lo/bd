import psycopg2
# coding: latin-1

con = psycopg2.connect(host='localhost', database='teste', user='postgres', password='12345')
cur = con.cursor()
#sql = 'create table cidade (id serial primary key, nome varchar(100), uf varchar(2))'
#6   cur.execute(sql)
#7   sql = "insert into cidade values (default,'São Paulo,'SP')"
#8   cur.execute(sql)
#9   con.commit()
cur.execute('select * from tbid')
recset = cur.fetchall()
for rec in recset:
    print (rec)
con.close()