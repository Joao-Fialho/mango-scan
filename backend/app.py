from flask import Flask, render_template, request, jsonify, redirect, flash
import sqlite3


app = Flask(__name__)
app.secret_key = 'doguinho17'

conn = sqlite3.connect('mango.db')
cursor = conn.cursor()
cursor.execute('''CREATE TABLE IF NOT EXISTS series
                  (id INTEGER PRIMARY KEY AUTOINCREMENT,
                   nome TEXT UNIQUE,
                   link_capa TEXT,
                   valor_capitulo REAL,
                   qtd_capitulos INTEGER,
                   status TEXT,
                   tipo_serie TEXT,
                   restricao_registro INTEGER DEFAULT NULL)''')
conn.commit()
conn.close()

conn = sqlite3.connect('mango.db')
cursor = conn.cursor()

cursor.execute('''
    CREATE TABLE IF NOT EXISTS chapters (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_id INTEGER,
        series_name TEXT,
        chapter_number INTEGER,
        chapter_function TEXT,
        valor_capitulo REAL
    )
''')

conn.commit()
conn.close()

@app.route('/api/series')
def series():
    conn = sqlite3.connect('mango.db')
    cursor = conn.cursor()
    cursor.execute('SELECT nome, link_capa, valor_capitulo, qtd_capitulos, status, tipo_serie, restricao_registro FROM series')
    series = cursor.fetchall()
    conn.close()

    series_list = []
    for s in series:
        series_list.append({
            'nome': s[0],
            'link_capa': s[1],
            'valor_capitulo': s[2],
            'qtd_capitulos': s[3],
            'status': s[4],
            'tipo_serie': s[5],
            'restricao_registro': s[6]
        })

    return jsonify({'series': series_list})


@app.route('/api/adicionar_serie', methods=['POST'])
def adicionar_serie():
    nome = request.form['nome']
    link_capa = request.form['link_capa']
    valor_capitulo = request.form['valor_capitulo']
    qtd_capitulos = request.form['qtd_capitulos']
    status = request.form['status']
    tipo_serie = request.form['tipo_serie']
    restricao_registro = request.form['restricao_registro']

    conn = sqlite3.connect('mango.db')
    cursor = conn.cursor()
    
    cursor.execute('INSERT INTO series (nome, link_capa, valor_capitulo, qtd_capitulos, status, tipo_serie, restricao_registro) VALUES (?, ?, ?, ?, ?, ?, ?)', (nome, link_capa, valor_capitulo, qtd_capitulos, status, tipo_serie, restricao_registro))
    conn.commit()
    conn.close()

    response = {'message': 'Série adicionada com sucesso!'}
    return jsonify(response), 200


@app.route('/api/capitulos', methods=['POST'])
def chapters():
    user_id = request.form['user_id']
    series_name = request.form['series_name']
    chapter_number = request.form['chapter_number']
    chapter_function = request.form['chapter_function']

    conn = sqlite3.connect('mango.db')
    cursor = conn.cursor()

    cursor.execute('SELECT * FROM chapters WHERE user_id = ? AND series_name = ? AND chapter_number = ? AND chapter_function = ?', (user_id, series_name, chapter_number, chapter_function))
    if cursor.fetchone() is not None:
        conn.close()
        return jsonify({'message': f'O usuário {user_id} já registrou o capítulo {chapter_number} da série "{series_name}" com a função "{chapter_function}".'}), 409

    cursor.execute('SELECT valor_capitulo, restricao_registro FROM series WHERE nome = ?', (series_name,))
    series = cursor.fetchone()
    if series is None:
        conn.close()
        return jsonify({'message': f'A série "{series_name}" não existe no banco de dados.'}), 400

    valor_capitulo = series[0]
    restricao_registro = series[1]

    if restricao_registro is not None and int(chapter_number) <= int(restricao_registro):
        conn.close()
        return jsonify({'message': f'O registro para o capítulo {chapter_number} da série "{series_name}" está restrito.'}), 400

    cursor.execute('INSERT INTO chapters (user_id, series_name, chapter_number, chapter_function, valor_capitulo) VALUES (?, ?, ?, ?, ?)', (user_id, series_name, chapter_number, chapter_function, valor_capitulo))
    conn.commit()

    conn.close()

    return jsonify({'message': f'O capítulo {chapter_number} da série "{series_name}" com a função "{chapter_function}" foi registrado com sucesso.'}), 201



if __name__ == '__main__':
    app.run(debug=True)

