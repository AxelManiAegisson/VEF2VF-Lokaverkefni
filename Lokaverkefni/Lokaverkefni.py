import pymysql
from bottle import *

@get('/')
def index():
    return template('sidur/index')





@route('/login', method='POST')
def login():
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
        return template('sidur/admin',u=u)
    else:
        return template('sidur/adgangurbannadur')

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

try:
    run(host="0.0.0.0", port=os.environ.get('PORT'))
except:
    run(debug=True)
