# Laboratory Exercise 3: React Props and Component Communication

Mini Product Catalog ("CvSU Mini Store") built with React + Vite.

## Run
npm install
npm run dev

## Guide Questions

1. **What is the difference between props and state?**
   Props are values passed down from a parent component to a child, and they are read-only. State is data that a component owns and manages itself, and it can change over time, which makes the component re-render.

2. **Why can a child component not modify the props it receives?**
   Props belong to the parent, so React treats them as read-only. This keeps data flowing in one direction (parent to child), which makes the app predictable and easier to debug. If a child needs to change something, it asks the parent to do it.

3. **How does the onAddToCart callback allow data to flow from child to parent even though props only flow downward?**
   The parent passes a function down as a prop. The child does not change the parent's data directly. It just calls that function when the button is clicked and passes the product title as an argument. The function runs in the parent, so the parent receives the data and updates its own state (the cart count and last added item).

4. **Why is the key prop required when rendering a list with .map()? What could happen if it is missing or duplicated?**
   The key gives each item in the list a unique identity, so React can tell which items were added, removed, or changed and update only those. If it is missing or duplicated, React shows a warning and may re-render the wrong items, mix up their data or state, or perform slower updates.

5. **What does the children prop allow you to do that a normal prop does not?**
   The children prop lets a parent put any content (text, elements, or other components) between the opening and closing tags of a component, such as a <span>New</span> badge inside ProductCard. A normal prop passes a single value like a string or number, while children lets the component display flexible, custom content.
