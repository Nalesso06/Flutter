import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informazioni Aziendali'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Chi Siamo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Siamo un\'azienda leader nella produzione di componenti informatici, '
                'offriamo una vasta gamma di prodotti per soddisfare le esigenze dei nostri clienti.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 20),
              Divider(thickness: 1.5),
              SizedBox(height: 20),
              Text(
                'I Nostri Valori',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.thumb_up, color: Colors.blueAccent, size: 30),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Affidabilità: Garantiamo la massima qualità dei nostri prodotti.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.eco, color: Colors.green, size: 30),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Sostenibilità: Investiamo in tecnologie ecologiche.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.people, color: Colors.orange, size: 30),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Clienti al centro: Il nostro obiettivo è la tua soddisfazione.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(thickness: 1.5),
              SizedBox(height: 20),
              Text(
                'Perché Scegliere Noi?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.star, color: Colors.amber),
                title: Text('Oltre 20 anni di esperienza nel settore.'),
              ),
              ListTile(
                leading: Icon(Icons.local_shipping, color: Colors.blue),
                title: Text('Consegna rapida e sicura in tutto il mondo.'),
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.green),
                title: Text('Assistenza tecnica specializzata 24/7.'),
              ),
              SizedBox(height: 20),
              Text(
                'Contatti',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.blue),
                title: Text('Telefono: +39 123 456 789'),
              ),
              ListTile(
                leading: Icon(Icons.email, color: Colors.red),
                title: Text('Email: info@aziendainformatica.com'),
              ),
              ListTile(
                leading: Icon(Icons.location_on, color: Colors.green),
                title: Text('Indirizzo: Via Esempio 123, Roma, Italia'),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Torna alla Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
