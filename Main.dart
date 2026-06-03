import 'package:flutter/material.dart';

void main() {
  runApp(const EmpregoMoz());
}

class EmpregoMoz extends StatelessWidget {
  const EmpregoMoz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Emprego Moz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

// ================= HOME =================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(
                Icons.handshake,
                size: 90,
                color: Colors.white,
              ),

              const SizedBox(height: 20),

              const Text(
                "EMPREGO MOZ",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Trabalho mais perto de ti",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("Sou Candidato"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CandidatePage(),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("Sou Empresa"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CompanyPage(),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text("Administrador"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AdminPage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ================= CANDIDATO =================

class CandidatePage extends StatelessWidget {
  const CandidatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Candidato"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [

            TextField(
              decoration: InputDecoration(
                labelText: "Nome Completo",
              ),
            ),

            SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                labelText: "Telefone",
              ),
            ),

            SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                labelText: "Província",
              ),
            ),

            SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                labelText: "Formação",
              ),
            ),

            SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                labelText: "Experiência",
              ),const SizedBox(height: 30),

Text(
  "Minhas Convocações",
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
),

Card(
  child: ListTile(
    leading: Icon(Icons.mail),
    title: Text("ABC Construções"),
    subtitle: Text(
      "Entrevista • 15/06/2026 • 09:00",
    ),
  ),
),
            ),
          ],
        ),
      ),
    );
  }
}

// ================= EMPRESA =================

class CompanyPage extends StatelessWidget {
  const CompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Empresa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [

            TextField(
              decoration: InputDecoration(
                labelText: "Nome da Empresa",
              ),
            ),

            SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                labelText: "NUIT",
              ),
            ),

            SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                labelText: "Telefone",
              ),
            ),

            SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                labelText: "Email",
              ),const SizedBox(height: 20),

TextField(
  decoration: InputDecoration(
    labelText: "Título da Vaga",
  ),
),

TextField(
  decoration: InputDecoration(
    labelText: "Categoria",
  ),
),

TextField(
  decoration: InputDecoration(
    labelText: "Província",
  ),
),

TextField(
  decoration: InputDecoration(
    labelText: "Salário",
  ),
),

TextField(
  decoration: InputDecoration(
    labelText: "Requisitos",const SizedBox(height: 20),

ElevatedButton(
  onPressed: () {},
  child: const Text("Pesquisar"),
),
  ),const SizedBox(height: 20),

Card(
  child: ListTile(
    leading: Icon(Icons.person),
    title: Text("João - Carpinteiro"),
    subtitle: Text("Maputo • 5 anos de experiência"),
    trailing: ElevatedButton(
      onPressed: () {},
      child: Text("Convocar"),
    ),
  ),
),

Card(
  child: ListTile(
    leading: Icon(Icons.person),
    title: Text("Carlos - Eletricista"),
    subtitle: Text("Beira • 3 anos de experiência"),
    trailing: ElevatedButton(
      onPressed: () {},
      child: Text("Convocar"),
    ),
  ),
),
),const SizedBox(height: 20),

ElevatedButton(
  onPressed: () {},
  child: const Text("Publicar Vaga"),
),const SizedBox(height: 30),

Text(
  "Pesquisar Candidatos",
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
),TextField(
  decoration: InputDecoration(
    labelText: "Profissão",
  ),
),

TextField(
  decoration: InputDecoration(
    labelText: "Província",
  ),
),

TextField(
  decoration: InputDecoration(
    labelText: "Experiência",
  ),
),
            ),
          ],
        ),
      ),
    );
  }
}

// ================= ADMIN =================

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Painel Admin"),
      ),
      body: ListView(
        children: const [

          ListTile(
            leading: Icon(Icons.people),
            title: Text("Candidatos"),
          ),

          ListTile(
            leading: Icon(Icons.business),
            title: Text("Empresas"),
          ),

          ListTile(
            leading: Icon(Icons.payments),
            title: Text("Pagamentos"),
          ),

          ListTile(
            leading: Icon(Icons.mail),
            title: Text("Convocações"),
          ),
        ],
      ),
    );
  }
}
