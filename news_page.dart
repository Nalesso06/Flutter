import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notizie App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: NewsPage(),
    );
  }
}

class NewsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notizie',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
        elevation: 10,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Nessuna nuova notifica!')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'asset/image/news1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Nuovi prodotti in arrivo!',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey[900],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rimanete sintonizzati per ulteriori aggiornamenti e scoprite le ultime novità che abbiamo in serbo per voi.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewsDetailPage(
                                title: 'Nuovi prodotti in arrivo!',
                                description:
                                    'Scopri tutti i dettagli sui nuovi prodotti che stiamo per lanciare.',
                                imagePath: 'asset/image/news1.jpg',
                                fullContent:
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 170, 255),
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Scopri di più',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Altre notizie',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 170, 255),
                ),
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  List<String> newsTitles = [
                    'Lancio del nuovo smartphone',
                    'Evento tecnologico a Milano',
                    'Aggiornamento software disponibile',
                    'Nuova partnership con Google',
                    'Sconti esclusivi per i clienti fedeli',
                  ];
                  List<String> newsDescriptions = [
                    'Scopri le caratteristiche del nuovo modello.',
                    'Partecipa al più grande evento tech dell\'anno.',
                    'Migliora le prestazioni del tuo dispositivo.',
                    'Collaborazione per innovare il futuro.',
                    'Approfitta delle offerte riservate ai nostri clienti.',
                  ];
                  List<String> newsFullContent = [
                    'Il nuovo smartphone, denominato Peraphone 15 Pro, è stato appena presentato al pubblico. Tra le caratteristiche principali troviamo un processore octa-core di ultima generazione, un display AMOLED da 6,7 pollici con risoluzione 4K e una fotocamera principale da 108 MP con funzionalità di registrazione video 8K. Inoltre, il dispositivo supporta la ricarica rapida da 65W, permettendo di raggiungere il 50% della batteria in soli 20 minuti. Disponibile in tre colorazioni – nero, argento e oro – sarà nei negozi a partire dal mese prossimo.',
                    'Milano Tech Summit 2025 si terrà dal 10 al 12 marzo presso il centro congressi MiCo. Durante l\'evento, esperti del settore discuteranno delle ultime tendenze tecnologiche, tra cui intelligenza artificiale, Internet delle cose (IoT) e realtà aumentata. Keynote speaker di spicco includono il CEO di Tesla, Elon Musk, e il fondatore di OpenAI. L\' evento sarà un\' opportunità unica per scoprire innovazioni e network con professionisti del settore.',
                    'È disponibile un nuovo aggiornamento software per il sistema operativo UltraOS 5. Questo aggiornamento introduce funzionalità di sicurezza avanzate, inclusa la protezione contro malware di ultima generazione, miglioramenti alla gestione della batteria che prolungano l\' autonomia del 20%, e una nuova interfaccia utente più intuitiva. Gli utenti possono scaricare l\' aggiornamento direttamente dalle impostazioni del dispositivo a partire da oggi.',
                    'La società TechNext ha annunciato una partnership strategica con Google per sviluppare soluzioni basate sull\'intelligenza artificiale. Questa collaborazione mira a migliorare le capacità di ricerca vocale e a sviluppare applicazioni AI per dispositivi mobili. Il primo progetto, chiamato \'Smart Voice Assistant 2.0\', sarà lanciato entro la fine dell\'anno e promette di rivoluzionare l\' interazione tra gli utenti e i loro dispositivi.',
                    'In occasione del decimo anniversario dell\'azienda, tutti i clienti fedeli potranno usufruire di uno sconto esclusivo del 30% su una selezione di prodotti. L\'offerta include smartphone, accessori e dispositivi smart. Per accedere allo sconto, è necessario registrarsi sul sito ufficiale e utilizzare il codice promozionale inviato via email. L\'offerta è valida fino alla fine del mese.',
                  ];
                  List<String> imagePaths = [
                    'asset/image/news2.jpg',
                    'asset/image/news5.jpg',
                    'asset/image/news4.jpg',
                    'asset/image/news3.png',
                    'asset/image/news6.png',
                  ];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          imagePaths[index],
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        newsTitles[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey[900],
                        ),
                      ),
                      subtitle: Text(
                        newsDescriptions[index],
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios, color: const Color.fromARGB(255, 0, 170, 255)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewsDetailPage(
                              title: newsTitles[index],
                              description: newsDescriptions[index],
                              imagePath: imagePaths[index],
                              fullContent: newsFullContent[index],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewsDetailPage extends StatelessWidget {
  final String title;
  final String description;
  final String? imagePath;
  final String fullContent;

  NewsDetailPage({
    required this.title,
    required this.description,
    this.imagePath,
    required this.fullContent,
  });
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 9, 255, 0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (imagePath != null && imagePath!.isNotEmpty)
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath!,
                    fit: BoxFit.cover,
                  ),
                ),
              SizedBox(height: 16),
              Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                description,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 16),
              Text(
                fullContent,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
