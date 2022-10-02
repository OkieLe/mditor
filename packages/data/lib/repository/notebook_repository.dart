import 'package:joplin_database/database/database.dart';

import '../local_data_source.dart';
import '../models/notebook.dart';
import '../utils/date_utils.dart';

class NotebookRepository extends LocalDataSource {
  NotebookRepository(JoplinDatabase database) : super(database);

  Stream<List<Notebook>> getNotebooks() {
    return database.folderDao.getFolders().map((event) {
      return event.map((element) => Notebook.from(element)).toList();
    });
  }

  Future<int> addNotebook(String title, String? parentId) {
    int currentTime = DateUtils.currentTimestamp();
    Notebook notebook = Notebook(
      title: title,
      parentId: parentId ?? '',
      createdTime: currentTime,
      updatedTime: currentTime,
    );
    return database.folderDao.addFolder(notebook.to());
  }

  Future<int> updateNotebook(String id, String title) {
    int currentTime = DateUtils.currentTimestamp();
    return database.folderDao.updateFolder(title, currentTime, currentTime, id);
  }

  Future<int> removeNotebook(String id) {
    return database.folderDao.removeFolder(id);
  }
}
