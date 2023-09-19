# North American Portsmouth Calculated Handicap

A new Flutter project.

## Key Flutter and Dart Features Used
### Packages
- google_fonts: ^6.0.0
A Flutter package to use fonts from fonts.google.com.
- go_router: ^10.2.0
A declarative routing package for Flutter that uses the Router API to provide a convenient, url-based API for navigating between different screens. You can define URL patterns, navigate using a URL, handle deep links, and a number of other navigation-related scenarios.
### Flutter SDK
- ThemeData Class
- MaterialApp (for Material Design)
  - Material Library
    - AppBar & AppBarTheme
      - leading IconButton with go_route to a view
      - Fitted Box 
      - actions IconButton with go_route to a view
    - Material Design
      - TextField Class for user input
      - TextEditingController Class
        - onChanged to perform search of text in List[]
    - ListView for scrolling widget
      - Used ListView.separated and itemBuilder to populate from List[]
      - Child of ListView
        - ListTile class
          - styled using themeData
          - Used title and subtitle populated from List[]
    