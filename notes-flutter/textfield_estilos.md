#### Cor do texto digitado 
```dart
child: const TextField(
	style: TextStyle(color: Colors.white),
),
```

#### Cor do cursor
```dart
child: const TextField(
	cursorColor: Color.fromARGB(255, 6, 89, 212),
),
```

#### Placeholder e cor do placeholder

```dart
child: const TextField(
	decoration: InputDecoration(
		hintText: "E-mail",
		hintStyle: TextStyle(color: Colors.white60),
	),
),
```

#### Ícones e cores de ícones

```dart
child: const TextField(
	decoration: InputDecoration(
		//icone no inicio
		prefixIcon: Icon(
			Icons.lock_outline,
			color: Color.fromARGB(255, 6, 89, 212),
			),
		//icone no final
		suffixIcon: Icon(
			Icons.visibility_off_outlined,
			color: Color.fromARGB(255, 80, 91, 109),
	    )),
	),
),
```

