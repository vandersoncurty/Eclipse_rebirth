from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def inicio():
    return render_template("inicio.html")

@app.route("/racas")
def racas():
    return render_template("racas.html")

@app.route("/classes")
def classes():
    return render_template("classes.html")

@app.route("/profissoes")
def profissoes():
    return render_template("profissoes.html")

@app.route("/regras")
def regras():
    return render_template("regras.html")

@app.route("/thelassia")
def thelassia():
    return render_template("thelassia.html")

@app.route("/historia")
def historia():
    return render_template("historia.html")

if __name__ == "__main__":
    app.run(debug=True)
