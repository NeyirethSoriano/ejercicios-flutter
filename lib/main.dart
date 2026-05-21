import 'package:flutter/material.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejercicios Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Ejercicios Flutter Stateless'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Ejercicio 1'),
              Tab(text: 'Ejercicio 2'),
              Tab(text: 'Ejercicio 3'),
              Tab(text: 'Ejercicio 4'),
              Tab(text: 'Ejercicio 5'),
              Tab(text: 'Ejercicio 6'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Ejercicio1(),
            Ejercicio2(),
            Ejercicio3(),
            Ejercicio4(),
            Ejercicio5(),
            Ejercicio6(),
          ],
        ),
      ),
    );
  }
}

class Ejercicio1 extends StatelessWidget {
  const Ejercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.school,
              size: 100,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            const Text(
              'Bienvenido a Aprende Fácil',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Aprende diferentes áreas de estudio de forma fácil y divertida.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                tarjetaArea(
                  Icons.code,
                  'Programación',
                  Colors.orange,
                ),
                tarjetaArea(
                  Icons.calculate,
                  'Matemáticas',
                  Colors.green,
                ),
                tarjetaArea(
                  Icons.design_services,
                  'Diseño',
                  Colors.purple,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget tarjetaArea(IconData icono, String titulo, Color color) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Icon(icono, color: Colors.white, size: 40),
            const SizedBox(height: 10),
            Text(
              titulo,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Ejercicio2 extends StatelessWidget {
  const Ejercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            actividad(Icons.login, '7:00 a.m.', 'Llegada al ambiente',
                'Ingreso a clase'),
            actividad(Icons.menu_book, '8:00 a.m.', 'Explicación del tema',
                'Clase teórica'),
            actividad(Icons.computer, '10:00 a.m.', 'Trabajo práctico',
                'Desarrollo de ejercicios'),
            actividad(Icons.restaurant, '12:00 p.m.', 'Almuerzo',
                'Tiempo de descanso'),
            actividad(Icons.groups, '2:00 p.m.', 'Socialización',
                'Trabajo en grupo'),
            actividad(Icons.assignment, '4:00 p.m.',
                'Entrega de evidencia', 'Entrega final'),
            actividad(Icons.logout, '5:00 p.m.', 'Salida',
                'Finalización de la jornada'),
          ],
        ),
      ),
    );
  }

  Widget actividad(
      IconData icono, String hora, String titulo, String descripcion) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(icono, color: Colors.blue),
        title: Text('$hora - $titulo'),
        subtitle: Text(descripcion),
      ),
    );
  }
}

class Ejercicio3 extends StatelessWidget {
  const Ejercicio3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Text(
              'Normas del Ambiente',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Estas normas ayudan a mantener una buena convivencia.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  norma(Icons.access_time, 'Puntualidad',
                      'Llegar puntualmente.'),
                  norma(Icons.record_voice_over, 'Respeto',
                      'Respetar la palabra de los compañeros.'),
                  norma(Icons.computer, 'Cuidado',
                      'Cuidar los equipos del ambiente.'),
                  norma(Icons.cleaning_services, 'Limpieza',
                      'Mantener limpio el ambiente.'),
                  norma(Icons.people, 'Participación',
                      'Participar activamente en clase.'),
                  norma(Icons.assignment_turned_in, 'Responsabilidad',
                      'Entregar evidencias a tiempo.'),
                  Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      'Compromiso del aprendiz:\nCumplir las normas y mantener una actitud positiva.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget norma(IconData icono, String titulo, String descripcion) {
    return Card(
      child: ListTile(
        leading: Icon(icono, color: Colors.blue),
        title: Text(titulo),
        subtitle: Text(descripcion),
      ),
    );
  }
}

class Ejercicio4 extends StatelessWidget {
  const Ejercicio4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tienda Virtual',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            producto('Camiseta', '\$45.000'),
            producto('Gorra', '\$30.000'),
            producto('Zapatos', '\$120.000'),
            const Divider(),
            const Text(
              'Subtotal: \$195.000',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text(
              'Envío: \$10.000',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text(
              'Total: \$205.000',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Card(
              color: Colors.green.shade100,
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 10),
                    Text(
                      'Compra lista para confirmar',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget producto(String nombre, String precio) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.shopping_bag),
        title: Text(nombre),
        trailing: Text(precio),
      ),
    );
  }
}

class Ejercicio5 extends StatelessWidget {
  const Ejercicio5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Icon(
              Icons.security,
              size: 100,
              color: Colors.red,
            ),
            const SizedBox(height: 15),
            const Text(
              'Seguridad Digital',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Protege tu información personal con estas recomendaciones.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            recomendacion(Icons.lock, 'Usar contraseñas seguras'),
            recomendacion(Icons.key, 'No compartir claves'),
            recomendacion(Icons.logout, 'Cerrar sesión en equipos públicos'),
            recomendacion(Icons.link_off, 'Verificar enlaces sospechosos'),
            recomendacion(Icons.verified_user,
                'Activar verificación en dos pasos'),
            recomendacion(
                Icons.download, 'No descargar archivos desconocidos'),
          ],
        ),
      ),
    );
  }

  Widget recomendacion(IconData icono, String texto) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Icon(icono, color: Colors.red),
        title: Text(texto),
      ),
    );
  }
}

class Ejercicio6 extends StatelessWidget {
  const Ejercicio6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            participante(
                '1', 'Laura', '95 puntos', 'Excelente participación'),
            participante(
                '2', 'Camilo', '90 puntos', 'Muy buen trabajo'),
            participante(
                '3', 'Sofía', '86 puntos', 'Buen desempeño'),
            participante(
                '4', 'Andrés', '84 puntos', 'Buen esfuerzo'),
            participante(
                '5', 'Valentina', '82 puntos', 'Gran actitud'),
            participante(
                '6', 'Mateo', '80 puntos', 'Trabajo constante'),
            participante(
                '7', 'Daniela', '78 puntos', 'Sigue mejorando'),
            participante(
                '8', 'Juan', '75 puntos', 'Buen intento'),
          ],
        ),
      ),
    );
  }

  Widget participante(
      String posicion, String nombre, String puntaje, String mensaje) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: const Icon(
          Icons.emoji_events,
          color: Colors.amber,
        ),
        title: Text('$posicion. $nombre'),
        subtitle: Text(mensaje),
        trailing: Text(puntaje),
      ),
    );
  }
}