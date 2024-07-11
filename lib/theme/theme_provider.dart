import 'package:flutter/material.dart';
import 'dark_mode.dart';
import 'light_mode.dart';

    // מחלקה שמנהלת את המצב של ערכת נושא הנוכחית, ויכולה לשנות אותו ולהודיע על השינויים
class ThemeProvider with ChangeNotifier {
    // משתנה פרטי שמחזיק את ערכת נושא הנוכחית, מתחיל עם ערכת נושא הבהירה
  ThemeData _themeData = lightMode;

    // גטר שמחזיר את התמה הנוכחית
  ThemeData get themeData => _themeData;

    // גטר שמחזיר האם ערכת נושא הנוכחית היא תמה כהה
  bool get isDarkMode => _themeData == darkMode;

  // סטר שמעדכן את ערכת נושא הנוכחית ומודיע למאזינים על השינוי
  void updateThemeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners(); // מודיע לכל המאזינים שהמצב השתנה
  }

  // פונקציה שמחליפה בין ערכת נושא בהירה לערכת נושא כהה ולהפך
  void toggleTheme() {
    if (_themeData == lightMode) {
      // אם ערכת נושא הנוכחית היא בהירה, שנה ערכת נושא כהה
      updateThemeData(darkMode); 
    } else {
      // אחרת, שנה לתמה בהירה
      updateThemeData(lightMode); 
    }
  }
}
