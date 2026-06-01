1. JavaScript Fundamentals
Core Language: JavaScript is the backbone of frontend development, enabling dynamic behavior in web pages.

Key Concepts: Variables, data types, functions, scope, closures, promises, async/await, ES6+ features (arrow functions, destructuring, modules).

DOM Manipulation: Directly interacting with HTML elements, event handling, and updating UI dynamically.

Event Loop: Understanding synchronous vs asynchronous execution, call stack, microtasks, and macrotasks.

2. React Basics
Component-Based Architecture: UI is broken into reusable components (functional or class-based).

JSX: A syntax extension that allows writing HTML-like code inside JavaScript.

Props & State: Props pass data between components; state manages local component data.

Lifecycle Methods: In class components (componentDidMount, componentDidUpdate, componentWillUnmount) and hooks in functional components (useEffect).

3. Advanced React
Hooks: useState, useEffect, useContext, useReducer, custom hooks for reusability.

Context API: For global state management without prop drilling.

React Router: For navigation and routing between pages.

Performance Optimization: Memoization (React.memo, useMemo, useCallback), lazy loading, code splitting.

4. State Management
Local State: Managed with useState/useReducer.

Global State: Context API or external libraries like Redux, Zustand, or MobX.

Redux: Predictable state container with actions, reducers, and store.

5. Frontend Ecosystem
Build Tools: Webpack, Babel, Vite.

Styling: CSS, SCSS, CSS-in-JS (styled-components, Emotion), Tailwind CSS.

Testing: Jest, React Testing Library, Cypress.

APIs: Fetch, Axios, REST, GraphQL.

6. Interview-Relevant Topics
Performance: Virtual DOM, reconciliation, diffing algorithm.

Security: XSS prevention, CSRF protection, sanitizing inputs.

Best Practices: Component reusability, clean code, accessibility (ARIA roles, semantic HTML).

Deployment: CI/CD pipelines, hosting (Netlify, Vercel), environment variables.

🎯 20 Interview Q&A (React + JS)
JavaScript
Q: What is the difference between var, let, and const?
A: var is function-scoped and allows redeclaration. let is block-scoped and mutable. const is block-scoped but immutable (though objects/arrays can be mutated internally).

Q: Explain closures with an example.
A: A closure is when a function remembers variables from its outer scope even after that scope has finished executing. Example:

js
function outer() {
  let count = 0;
  return function inner() {
    count++;
    return count;
  };
}
const counter = outer();
counter(); // 1
counter(); // 2
Q: What is the difference between synchronous and asynchronous code?
A: Synchronous code executes line by line, blocking further execution. Asynchronous code (like promises, async/await) allows non-blocking operations, useful for API calls.

Q: Explain the Event Loop in JavaScript.
A: The event loop manages execution: synchronous code runs first, then async callbacks are queued in microtask/macrotask queues, ensuring non-blocking behavior.

Q: What are ES6 features you use often?
A: Arrow functions, template literals, destructuring, spread/rest operators, modules, promises, async/await.

React
Q: What is the Virtual DOM and why is it important?
A: Virtual DOM is a lightweight copy of the real DOM. React updates the virtual DOM first, then efficiently reconciles differences with the real DOM, improving performance.

Q: Difference between functional and class components?
A: Class components use lifecycle methods and this. Functional components are simpler, use hooks for state and lifecycle, and are preferred in modern React.

Q: What are React Hooks?
A: Functions like useState, useEffect, useContext that allow functional components to manage state and lifecycle without classes.

Q: Explain useEffect with an example.
A: useEffect runs side effects after render. Example:

js
useEffect(() => {
  document.title = "Hello React";
}, []);
Q: How do you optimize performance in React?
A: Use memoization (React.memo, useMemo, useCallback), lazy loading, code splitting, avoiding unnecessary re-renders.

Q: What is prop drilling and how to avoid it?
A: Passing props through multiple layers unnecessarily. Avoided using Context API or state management libraries like Redux.

Q: Difference between controlled and uncontrolled components?
A: Controlled components have form inputs managed by React state. Uncontrolled components rely on refs and the DOM for values.

Q: How does React Router work?
A: It maps URLs to components using <Route> and <Link>. It enables single-page applications with client-side navigation.

Q: What is Redux and why use it?
A: Redux is a predictable state container. It centralizes state, uses actions and reducers, and makes debugging easier with tools like Redux DevTools.

Q: Difference between Context API and Redux?
A: Context API is simpler, good for small apps. Redux is more powerful, with middleware and debugging tools, suitable for large-scale apps.

Advanced / Practical
Q: How do you handle API calls in React?
A: Using fetch or Axios inside useEffect, managing loading/error states, and cleaning up subscriptions.

Q: Explain code splitting in React.
A: Breaking code into smaller bundles loaded on demand using React.lazy and Suspense, improving performance.

Q: What is reconciliation in React?
A: The process React uses to compare virtual DOM with previous state and update only the changed parts in the real DOM.

Q: How do you ensure accessibility in React apps?
A: Use semantic HTML, ARIA roles, keyboard navigation, alt text for images, and tools like Lighthouse for audits.

Q: What are common security concerns in frontend apps?
A: XSS (sanitize inputs, use dangerouslySetInnerHTML carefully), CSRF (tokens), secure cookies, avoiding exposing secrets in frontend code.
