### Sobreposição do teclado

Sua aplicação pode apresentar erros ao subir o teclado pois os componentes irão subir junto com ele, para evitar que isso aconteça usamos:

```dart
body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            //demais componentes
          ),
     ),
```



