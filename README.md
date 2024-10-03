# Flutter Discounted Food Items App

This Flutter application demonstrates a basic implementation of Clean Architecture with BLoC for state management. The app displays a list of discounted food items, and when a user taps on an item, they can view the details of the selected item.

## Features

- **Clean Architecture**: Organized code structure separating concerns into layers (`data`, `domain`, `presentation`).
- **BLoC for State Management**: The app uses **BLoC** to manage the state of the food items list and handle state transitions (loading, loaded, error).
- **Details Page**: Each food item in the list can be tapped to navigate to a **details page** showing the selected food item’s information.
- **UI Components**:
  - Food items are displayed in **Cards** with a dummy image and essential information (name, description, and price).
  - The **Details Page** includes the food item name, description, price, and a placeholder image.
- **Dependency Injection**: The app uses **get_it** for dependency injection.
  
## App Flow

1. **Food List Page**:
   - Fetches and displays a list of discounted food items.
   - Each food item is displayed as a card with an image, name, description, and price.
   - Tapping a card navigates the user to the **Details Page**.

2. **Food Details Page**:
   - Displays the details of the selected food item, including its name, description, price, and a dummy image.

---

## Folder Structure

The project follows Clean Architecture principles and is divided into layers: **Data**, **Domain**, **Presentation**, and **Core**. The `presentation` layer contains the UI-related components, while the `domain` layer holds business logic, and the `data` layer manages repositories.

```
├── lib
│   ├── config
│   │   ├── routes
        ├── theme
│   ├── core
        ├── error
        ├── usecases
            ├── usecases.dart
        ├── util
│   ├── di
        ├── injection.dart
│   ├── feature
        ├── food_list
            ├── data
                ├── model
                    ├── food_item.dart
                ├── repository
                    ├── food_item_repository_impl.dart
            ├── domain
                ├── entities
                    ├── food_item.dart
                ├── repository
                    ├── food_item_repository.dart
                ├── usecases
                    ├── get_food_list.dart
            ├── presentation
                ├── bloc
                    ├── food_bloc
                        ├── food_bloc.dart
                        ├── food_state.dart
                        ├── food_event.dart
                ├── pages
                    ├── food_details.dart
                    ├── food_list.dart
                ├── widgets
                    ├── food_item_card.dart
    ├── main.dart

```

### Key Components

#### **FoodListPage**

- Displays a list of discounted food items.
- Uses a `BlocBuilder` to respond to different states:
  - **Loading**: Shows a loading spinner.
  - **Loaded**: Displays a list of food items as cards.
  - **Error**: Shows an error message if the data fetch fails.

#### **FoodDetailsPage**

- Displays the details of a selected food item (name, description, price, and an image).
- Button for potential further actions (e.g., adding the item to the cart).

#### **FoodItemCard**

- A reusable widget for displaying individual food items inside a card, with an image and text details.
- Tapping on the card navigates the user to the **FoodDetailsPage**.

---

## State Management (BLoC)

The application uses **BLoC** for managing state transitions.

### BLoC Files

- **food_bloc.dart**: The main BLoC file responsible for handling state changes.
- **food_event.dart**: Defines the events, such as fetching food items (`FetchFoodEvent`).
- **food_state.dart**: Defines the various states, such as loading, loaded with data, or error.

---

## How to Run

1. Clone the repository:

   ```bash
   git clone https://github.com/your-repo/flutter-discounted-food-items.git
    ```

2. Navigate to the project directory:

   ```bash
   cd flutter-discounted-food-items
    ```

3. Get dependencies:

      ```bash
    flutter pub get
    ```

4. Run the app:

    ```bash
    flutter run
    ```

## References

1. [Dependency Injection In Flutter](https://techdynasty.medium.com/dependency-injection-in-flutter-0f308870d1a5)
2. [Flutter Clean Architecture - Learn By A Project](https://www.youtube.com/watch?v=7V_P6dovixg&list=PLjyxas0TsCpnjpzCv3rnsX3LjS9G2K05f)
3. [Flutter Navigation](https://docs.flutter.dev/cookbook/navigation/hero-animations)
4. [BloC Documentation](https://bloclibrary.dev/#/)
