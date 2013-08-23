# lita-console

[![Build Status](https://travis-ci.org/webdestroya/lita-console.png)](https://travis-ci.org/webdestroya/lita-console)
[![Code Climate](https://codeclimate.com/github/webdestroya/lita-console.png)](https://codeclimate.com/github/webdestroya/lita-console)
[![Coverage Status](https://coveralls.io/repos/webdestroya/lita-console/badge.png)](https://coveralls.io/r/webdestroya/lita-console)

This improves the existing [Lita](https://github.com/jimmycuadra/lita) shell adapter by allowing for history and up/down arrow in console.

## Requirements
This library requires that you have `readline` installed.

## Installation

    gem "lita-console"

## Usage

```
Lita.configure do |config|
  config.robot.adapter = :console
end
```

## License

[MIT](http://opensource.org/licenses/MIT)
