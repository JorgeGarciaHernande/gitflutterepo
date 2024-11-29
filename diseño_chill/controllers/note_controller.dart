import 'package:supabase_flutter/supabase_flutter.dart';

class NoteController {
  final instance = Supabase.instance.client;

  // Obtener todas las notas
  Future<List<dynamic>> getNotes() async {
    try {
      final response = await instance.from('notes').select('*');
      return response as List<dynamic>;
    } catch (e) {
      throw Exception('Error al obtener las notas: $e');
    }
  }

  // Agregar una nueva nota
  Future<void> addNote() async {
    try {
      final response = await instance.from('notes').insert({
        'category': 1,
        'title': 'Curso Flutter',
        'content': 'Este es el contenido del curso modificado por Jorge García',
        'status': 0,
      });
      print('Nota añadida: $response');
    } catch (e) {
      throw Exception('Error al agregar una nota: $e');
    }
  }

  // Eliminar una nota por ID
  Future<void> deleteNote(int id) async {
    try {
      final response =
          await instance.from('notes').delete().eq('id', id);
      print('Nota eliminada: $response');
    } catch (e) {
      throw Exception('Error al eliminar la nota: $e');
    }
  }

  // Actualizar una nota por ID
  Future<void> updateNote(int id, Map<String, dynamic> updates) async {
    try {
      final response = await instance
          .from('notes')
          .update(updates)
          .eq('id', id);
      print('Nota actualizada: $response');
    } catch (e) {
      throw Exception('Error al actualizar la nota: $e');
    }
  }

  // Obtener una nota por ID
  Future<dynamic> getNoteById(int id) async {
    try {
      final response = await instance
          .from('notes')
          .select('*')
          .eq('id', id)
          .single();
      return response;
    } catch (e) {
      throw Exception('Error al obtener la nota por ID: $e');
    }
  }
}

