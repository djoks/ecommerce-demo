# E-Commerce Product List — iOS Coding Assignment

This starter template contains only the folder structure you need for the assignment. You must add implementation for networking, models, repository, ViewModel, SwiftUI views, and background tasks.

## Overview

Your task is to build a small SwiftUI module that displays a paginated list of products from an external API. You must use MVVM architecture, ```SwiftUI```, and either ```async/await``` or ```Combine```.

You will also implement a background sync task using BGTaskScheduler.

This assignment is designed to evaluate hands-on iOS development skills: networking, pagination, state management, SwiftUI, async programming, and background execution.

## API Endpoint

Use the DummyJSON API:

https://dummyjson.com/products?limit=10&skip={skip}

### Examples

- Initial load: ```skip=0```
- Next page: ```skip=10```, ```skip=20```, etc.

## Requirements

### 1. Networking

- Build a networking layer using URLSession or Alamofire.
- Implement a method to fetch paginated products:
  - fetchProducts(```limit: 10```, ```skip: Int```)

### 2. Data Models

Create models that map to DummyJSON's response:

- products: [Product]
- total: ```Int```
- skip: ```Int```
- limit: ```Int```

### 3. Repository Layer

- A repository class that calls the API service.
- Exposes:
  - ```func getProducts(skip: Int) async throws -> ProductResponse```

### 4. UI State

Define an enum:

- loading
- success(products)
- empty
- error(message)

### 5. ViewModel

- Uses ```@Published``` or ```async/await```.
- Loads products on appear.
- Implements pagination:
  - ```loadMoreProducts()```

### 6. SwiftUI UI

- Display product list with title, price, and image.
- Use List or ```ScrollView``` + ```LazyVStack```.
- Trigger pagination when the user reaches bottom.
- Display states: Loading, Error, Empty.

### 7. Background Sync

- Add ```BGTaskScheduler``` support.
- Register a background task identifier in ```Info.plist```.
- Implement a periodic sync task that:
  - runs hourly
  - calls a dummy sync endpoint or prints logs

