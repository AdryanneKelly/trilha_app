---
tags:
  - Flutter
  - Dart
---
### **Adicionando a dependência do Google Fonts**

-> link da dependência: https://pub.dev/packages/google_fonts/install

Primeiramente pare de rodar sua aplicação no emulador

1. No arquivo `` pubspec.yaml`` adicione: 
```yaml
dependencies:
  google_fonts: ^6.1.0
```

2. ``Ctrl + S`` para instalar
3. Rode ``start ms-settings:developers`` se pedir e ative o modo desenvolvedor.
4. Vai la no `` pubspec.yaml`` de novo e da ``Ctrl + S`` e tá pronto o sorvetinho.


### **Alterando a fonte no projeto**

Ou você coloca isso aqui: 
```dart
 style: GoogleFonts.acme(fontSize: 20)),
```

Ou se quiser colocar a fonte no projeto todo dentro do ``MaterialApp`` adicione:

```dart
theme: ThemeData(
      primarySwatch: Colors.red, textTheme: GoogleFonts.acmeTextTheme()),
);
```

Não esquecer de importar né : ``import 'package:google_fonts/google_fonts.dart';``
