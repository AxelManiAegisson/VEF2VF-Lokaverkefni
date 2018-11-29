import pymysql
from bottle import *

@get('/')
def index():
    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='2507002960', passwd='mypassword',db='2507002960_lokaverkvef')
    c = conn.cursor()
    c.execute("SELECT  titill, frett, hofundur from 2507002960_lokaverkvef.frett")
    result = c.fetchall()
    conn.close()
    c.close()
    output = template('sidur/index', rows=result)
    return output



@route('/admin')
def ritstjorn():
    return template('sidur/admin')



@route('/gerafrett', method='POST')
def news():
    u = request.forms.get('user')
    p = request.forms.get('pass')

    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='2507002960', passwd='mypassword',db='2507002960_lokaverkvef')
    cur = conn.cursor()

    cur.execute("SELECT count(*) From 2507002960_lokaverkvef.admin where user=%s and pass=%s",(u,p))
    result = cur.fetchone()
    print(result)

    if result[0] == 1:
        cur.close()
        conn.close()
        return template('sidur/gerafrett',u=u)
    else:
        return template('sidur/adgangurbannadur')

@route('/nyfrett', method='POST')
def nyfrett():
    t = request.forms.get('title')
    f = request.forms.get('frett')
    n = request.forms.get('nafn')

    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='2507002960', passwd='mypassword',db='2507002960_lokaverkvef')
    cur = conn.cursor()

    cur.execute("INSERT into 2507002960_lokaverkvef.frett(titill,frett,hofundur,user) Values(%s,%s,%s,%s)", (t,f,n,"admin") )
    conn.commit()
    cur.close()
    conn.close()

    redirect('/')


@route('/eydafrett', method='POST')
def eyda():
    i = request.forms.get('id')
    n = request.forms.get('user')
    p = request.forms.get('pass')

    conn = pymysql.connect(host='tsuts.tskoli.is', port=3306, user='2507002960', passwd='mypassword',db='2507002960_lokaverkvef')
    cur = conn.cursor()
    cur.execute("SELECT count(*) From 2507002960_lokaverkvef.admin where user=%s and pass=%s",(n,p))
    result = cur.fetchone()
    print(result)
    if result[0] == 1:
        cur.execute("DELETE from 2507002960_lokaverkvef.frett where id =(%s)", (i) )
        conn.commit()
        cur.close()
        conn.close()
        redirect('/')
    else:
        return template('sidur/adgangurbannadur')

try:
    run(host="0.0.0.0", port=os.environ.get('PORT'))
except:
    run(debug=True)
