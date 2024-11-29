import '../controllers/note_controller.dart';
import 'package:flutter/material.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  bool isOpen = false; // Controla si la barra lateral está abierta o cerrada
  List<dynamic> notes = []; // Lista para almacenar las notas cargadas
  bool isLoading = true; // Indica si los datos están cargando
  final NoteController _noteController = NoteController();

  @override
  void initState() {
    super.initState();
    _loadNotes(); // Cargar notas al iniciar la vista
  }

  Future<void> _loadNotes() async {
    setState(() {
      isLoading = true;
    });
    try {
      final fetchedNotes = await _noteController.getNotes();
      setState(() {
        notes = fetchedNotes;
      });
    } catch (e) {
      print('Error al cargar las notas: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isOpen ? 210 : 60,
            decoration: BoxDecoration(
              color: Colors.cyan.shade50,
              border: Border(
                right: BorderSide(color: Colors.cyan.shade300, width: 0.5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: IconButton(
                    icon: Icon(isOpen ? Icons.arrow_back : Icons.menu),
                    color: Colors.cyan.shade800,
                    onPressed: () {
                      setState(() {
                        isOpen = !isOpen;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20),
                _buildMenuItem(
                  Icons.folder,
                  "Proyectos",
                ),
                _buildMenuItem(
                  Icons.note_alt,
                  "Borradores",
                ),
                _buildMenuItem(
                  Icons.people,
                  "Compartido conmigo",
                ),
                const Spacer(),
                _buildMenuItem(
                  Icons.settings,
                  "Configuración",
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Side Hustle',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        size: 30,
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.link,
                        size: 30,
                      ),
                      const SizedBox(width: 20),
                      const Text(
                        'Compartir',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 20),
                      const Icon(
                        Icons.more_horiz,
                        size: 30,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Bienvenido, Jorge',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan.shade800,
                    ),
                  ),
                  const SizedBox(height: 20),
                  isLoading
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Expanded(
                          child: ListView.builder(
                            itemCount: notes.length,
                            itemBuilder: (context, index) {
                              final note = notes[index];
                              return Card(
                                margin: const EdgeInsets.symmetric(vertical: 10),
                                child: ListTile(
                                  title: Text(note['title'] ?? 'Sin título'),
                                  subtitle:
                                      Text(note['content'] ?? 'Sin contenido'),
                                  trailing: Text(
                                      'Categoría: ${note['category'] ?? 'N/A'}'),
                                ),
                              );
                            },
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          width: isOpen ? 210 : 60,
          child: Row(
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: Icon(icon, color: Colors.cyan.shade800, size: 24),
              ),
              if (isOpen) ...[
                const SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.cyan.shade800,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
