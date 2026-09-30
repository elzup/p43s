# p43s

[![ooparts](https://raw.githubusercontent.com/elzup/ooparts-spec/main/badge.svg)](https://github.com/elzup/ooparts-spec)

> Check if a string matches the p43s numeronym pattern

## Install

```
$ npm install p43s
```

## Usage

```js
const { isP43s } = require('p43s')

isP43s('probabilistic_programming_problems') // => true
isP43s('probabilistic_programming_problemS') // => true
isP43s('hello') // => false
```

## License

MIT © [anozon](https://anozon.me)
