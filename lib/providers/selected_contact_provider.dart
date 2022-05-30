import 'package:flutter/foundation.dart';

class SelectedContactProvider with ChangeNotifier{
    int _selectedContact = 0;
    int get stateSelectedContact => _selectedContact;

    set stateSelectedContact(int newSelectedContact){
      _selectedContact = newSelectedContact;
      notifyListeners();
    }
}