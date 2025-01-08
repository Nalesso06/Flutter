import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List<String> carrello = [];
  double totale = 0.0;
  void aggiungiAlCarrello(String prodotto, double prezzo) {
    setState(() {
      carrello.add(prodotto); 
      totale += prezzo; 
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Hai aggiunto: $prodotto\nTotale: €${totale.toStringAsFixed(2)}',
        ),
        duration: Duration(seconds: 2),
      ),
    );
  }

 
  void simulaAcquisto() {
    if (carrello.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Il carrello è vuoto!')),
      );
      return;
    }


    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Conferma Acquisto'),
          content: Text(
              'Sei sicuro di voler acquistare i seguenti prodotti?\n\n${carrello.join(', ')}\n\nTotale: €${totale.toStringAsFixed(2)}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Chiudi il dialogo
              },
              child: Text('Annulla'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  carrello.clear();
                  totale = 0.0; 
                });
                Navigator.pop(context); 
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Acquisto completato con successo!')),
                );
              },
              child: Text('Conferma'),
            ),
          ],
        );
      },
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acquisti'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Image.asset('assets/images/Immagine1.jpg', width: 50, height: 50),
            title: Text('Processore Intel Core i9'),
            subtitle: Text('Il processore più potente per gaming e produttività.\nPrezzo: €599.99'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                aggiungiAlCarrello('Processore Intel Core i9', 599.99);
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/images/Immagine2.jpg', width: 50, height: 50), 
            title: Text('Scheda Grafica NVIDIA RTX 3080'),
            subtitle: Text('Prestazioni eccezionali per i giochi più recenti.\nPrezzo: €799.99'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                aggiungiAlCarrello('Scheda Grafica NVIDIA RTX 3080', 799.99);
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/images/Immagine3.jpg', width: 50, height: 50), 
            title: Text('SSD Samsung 1TB'),
            subtitle: Text('Velocità e affidabilità per il tuo sistema.\nPrezzo: €129.99'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                aggiungiAlCarrello('SSD Samsung 1TB', 129.99);
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/images/Immagine4.jpg', width: 50, height: 50), 
            title: Text('Memoria RAM Corsair 32GB'),
            subtitle: Text('Massima performance per multitasking intensivo.\nPrezzo: €199.99'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                aggiungiAlCarrello('Memoria RAM Corsair 32GB', 199.99);
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/images/Immagine5.jpg', width: 50, height: 50), 
            title: Text('PC Gaming HP Omen'),
            subtitle: Text('PC preassemblato per gaming di alta gamma.\nPrezzo: €1499.99'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                aggiungiAlCarrello('PC Gaming HP Omen', 1499.99);
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/images/Immagine6.png', width: 50, height: 50), 
            title: Text('Scheda Madre ASUS ROG Strix'),
            subtitle: Text('Supporto per i processori più recenti e funzionalità avanzate.\nPrezzo: €299.99'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                aggiungiAlCarrello('Scheda Madre ASUS ROG Strix', 299.99);
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/images/Immagine7.jpg', width: 50, height: 50), 
            title: Text('Alimentatore Corsair 850W'),
            subtitle: Text('Alimentazione affidabile per sistemi potenti.\nPrezzo: €149.99'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                aggiungiAlCarrello('Alimentatore Corsair 850W', 149.99);
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/images/Immagine8.jpg', width: 50, height: 50),
            title: Text('Case NZXT H510'),
            subtitle: Text('Design elegante e funzionale per il tuo PC.\nPrezzo: €99.99'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                aggiungiAlCarrello('Case NZXT H510', 99.99);
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/images/Immagine9.jpg', width: 50, height: 50), 
            title: Text('Monitor Gaming Acer Predator'),
            subtitle: Text('Schermo da 27 pollici con refresh rate 144Hz.\nPrezzo: €399.99'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                aggiungiAlCarrello('Monitor Gaming Acer Predator', 399.99);
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/images/Immagine10.jpg', width: 50, height: 50), 
            title: Text('Tastiera Meccanica Razer BlackWidow'),
            subtitle: Text('Tastiera gaming con switch meccanici.\nPrezzo: €129.99'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                aggiungiAlCarrello('Tastiera Meccanica Razer BlackWidow', 129.99);
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/images/Immagine11.jpg', width: 50, height: 50), 
            title: Text('Mouse Gaming Logitech G502'),
            subtitle: Text('Mouse ergonomico con alta precisione.\nPrezzo: €79.99'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                aggiungiAlCarrello('Mouse Gaming Logitech G502', 79.99);
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/images/Immagine12.jpg', width: 50, height: 50), 
            title: Text('Cuffie HyperX Cloud II'),
            subtitle: Text('Cuffie con audio surround per un\'esperienza immersiva.\nPrezzo: €89.99'),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                aggiungiAlCarrello('Cuffie HyperX Cloud II', 89.99);
              },
            ),
          ),
          Divider(),
          ElevatedButton(
            onPressed: simulaAcquisto,
            child: Text('Acquista ora'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Prodotti nel carrello: ${carrello.join(', ')}\nTotale: €${totale.toStringAsFixed(2)}',
              ),
              duration: Duration(seconds: 4),
            ),
          );
        },
        child: Icon(Icons.shopping_cart),
        tooltip: 'Visualizza carrello',
      ),
    );
  }
}
