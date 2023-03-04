
abstract class GenericLocalDatasource<T>{
  Future<int> insert(T? data);
  Future<int> insertAll(List<T>? dataList);
  Future<int> update(T? data);
  Future<int> delete(int? id);
  Future<int> deleteAll();
  Future<List<T>?> getAll();
  Future<T?> getById(int? id);
}