abstract interface class NoteRepository {
  void create();

  void deleteAt(int index);

  void deleteAll();
}
