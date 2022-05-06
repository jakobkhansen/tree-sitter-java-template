# tree-sitter-java-template

Template for creating Java projects using the [tree-sitter](https://tree-sitter.github.io/tree-sitter/) parser.

## Installation

```bash
git clone git@github.com:jakobkhansen/tree-sitter-java-template.git
cd tree-sitter-java-template
make
```

## Usage

`App.java` is a starting point for using tree-sitter using Java grammar.

Run with:

```bash
gradle run
```


## Parsing other languages

If you want to parse other languages, add another grammar (for example [python](https://github.com/tree-sitter/tree-sitter-python)) as a submodule in the `grammar` folder.

```bash
git submodule add https://github.com/tree-sitter/tree-sitter-python grammars/tree-sitter-python
make
```

The parser-library will automatically add the new grammar to the library when building.

Finally, set the correct language for your parser:

```java
Parser parser = new Parser();
parser.setLanguage(Languages.python());
```

