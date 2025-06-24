# Haskell Foundations

## Project Overview

This repository contains a structured series of Haskell exercises developed over multiple weeks. Each module explores core functional programming concepts using Haskell, starting from basic functions to monads, IO, and type systems.

## Project Structure

### week-01-functions-and-patterns
Foundational exercises covering basic functions, pattern matching, list manipulation, and conditional logic.

### week-02-list-processing-and-math
Focused on mathematical operations, distance formulas, algorithms, and list-based problem-solving.

### week-03-recursion-and-higher-order
Introduces recursion, higher-order functions, list utilities, and custom implementations of common functional patterns.

### week-04-folds-and-comprehensions
Explores the use of `foldr`, list comprehensions, and functional abstraction through data transformation tasks.

### week-05-trees-and-structured-data
Exercises involving binary trees, shape transformations, structured data processing, and logic validation.

### week-06-maybe-monads-and-io
Introduces error handling using `Maybe`, working with monads, basic IO, and composing safe computations.

### week-07-type-systems-and-exercises
Final tasks reinforcing Haskell’s type system through applied problems and type-specific functions.

## How to Use

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/haskell-foundations.git
   ```
2. Navigate to any weekly folder.

3. Run files using GHCi:
   ```bash
   ghci filename.hs
   ```

## Issues

### VS Code says "Could not find module 'MaybeHalf'"

This is a false positive caused by how the Haskell Language Server handles modules when no `.cabal` or `stack.yaml` project is defined. The code still works as long as all files are in the same directory.

To test it, you can run:

```bash
ghci MaybeHalf.hs OneEighthDo.hs
```

## Contributing

Contributions, improvements, or suggestions are welcomed. Fork the repository, make your changes, and submit a pull request.

## License

This project is licensed under the MIT License – see the LICENSE.md file for details.