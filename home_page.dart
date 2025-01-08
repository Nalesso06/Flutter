import 'package:flutter/material.dart';
import 'info_page.dart';
import 'news_page.dart';
import 'shop_page.dart';

class PaginaHome extends StatefulWidget {
  final Map<String, String> datiUtente;

  PaginaHome({required this.datiUtente});
  _PaginaHomeState createState() => _PaginaHomeState();
}

class _PaginaHomeState extends State<PaginaHome> {
  String? motivoSelezionato;
  TextEditingController descrizioneController = TextEditingController();

  void inviaRichiesta() {
    // Mostra snackbar per feedback
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Richiesta inviata con successo!'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 2),
      ),
    );

    // Pulisce i campi
    setState(() {
      motivoSelezionato = null;
      descrizioneController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Azienda Componenti Informatici'),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InfoPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.article),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShopPage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Benvenuto, ${widget.datiUtente['nome']} ${widget.datiUtente['cognome']}!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Siamo lieti di averti nella nostra azienda di componenti informatici. Qui troverai le ultime notizie, informazioni dettagliate e il nostro negozio online.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              Text(
                'Le nostre sezioni:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.info, color: Colors.blue),
                title: Text("Informazioni sull'azienda"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InfoPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.article, color: Colors.green),
                title: Text('Ultime notizie'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewsPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.orange),
                title: Text('Negozio online'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShopPage()),
                  );
                },
              ),
              SizedBox(height: 30),
              Text(
                'Richiedi Assistenza:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Seleziona motivo',
                  border: OutlineInputBorder(),
                ),
                value: motivoSelezionato,
                items: [
                  DropdownMenuItem(
                    value: 'tecnico',
                    child: Text('Problemi tecnici'),
                  ),
                  DropdownMenuItem(
                    value: 'commerciale',
                    child: Text('Domande commerciali'),
                  ),
                  DropdownMenuItem(
                    value: 'altro',
                    child: Text('Altro'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    motivoSelezionato = value;
                  });
                },
              ),
              SizedBox(height: 10),
              TextField(
                controller: descrizioneController,
                decoration: InputDecoration(
                  labelText: 'Descrivi il tuo problema',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: inviaRichiesta,
                child: Text('Invia richiesta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
