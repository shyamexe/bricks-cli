## Usage 🚀

```sh
mason make bloc --name counter --style basic
```

## Variables ✨

| Variable | Description                 | Default                             | Type     |
| -------- | --------------------------- | ----------------------------------- | -------- |
| `name`   | The name of the bloc class  | `counter`                           | `string` |
| `style`  | The style of bloc generated | `basic (basic, equatable, freezed)` | `enum`   |

## Output 📦

```sh
├── counter_bloc.dart
├── counter_event.dart
└── counter_state.dart
```

[1]: https://dart.dev
[2]: https://github.com/felangel/bloc
