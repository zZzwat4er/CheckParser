enum ApiPaths{
  pushCheck('checks/push_check/'),
  getCheck('checks/get_checks/'),
  getUnsortedItem('checks/get_last_undefined/'),
  setUnsortedItem('checks/set_items_payers/'),
  getDepts('checks/get_debts/');
  

  final String path;
  const ApiPaths(this.path);
}