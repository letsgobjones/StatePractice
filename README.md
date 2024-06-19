
# StatePractice: SwiftUI State Management Examples

This project demonstrates various techniques for managing state in SwiftUI applications. It covers both basic and intermediate concepts, showcasing how to create interactive and dynamic user interfaces.

## Features

* **Basic State Management (`@State`)**:
    * Count Incrementer: A button increments a counter displayed on the screen.
    * Toggle with Background Change: A toggle switch that changes the background color of the view.
    * Name Input and List: A TextField allows inputting names, which are added to a displayed list.

* **Advanced Filtering (FriendsView)**:
    * Searchable List: A list of friends that can be filtered in real-time using a search bar.

## Techniques Used

* **@State Property Wrapper**: The core mechanism for managing state in SwiftUI views. Changes to `@State` variables trigger UI updates.
* **View Composition**: Combining basic views like `VStack`, `HStack`, `Text`, `Button`, `Toggle`, `TextField`, and `List` to build complex interfaces.
* **Data Binding (`$`)**: The `$` prefix is used to create bindings for two-way data flow between views and state variables.
* **Conditional Rendering (`if`, ternary operator)**: Dynamically changing UI elements based on state values.
* **List Filtering (`onChange`, `.filter`)**: Efficiently filtering a list of data in response to user input.
* **Searchable List (`searchable`)**: Creating a list with built-in search functionality.
* **onAppear Modifier**: Initializing or performing actions when a view appears on the screen.

## Code Structure

* `ContentView.swift`: Contains the main view with basic state management examples.
* `FriendsView.swift`: Demonstrates list filtering and searching.
* `README.md`: This file provides an overview of the project.


