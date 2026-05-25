JavaScript (JS) is the core programming language of the web, enabling dynamic, interactive behavior in browsers. It’s a high-level, interpreted language that follows the ECMAScript specification. JS is single-threaded but uses an event-driven, non-blocking model with the event loop and callback queue to handle asynchronous tasks.

Key Concepts
Execution Context & Call Stack  
JS runs code inside execution contexts. The call stack manages function execution order.

Hoisting  
Variable and function declarations are moved to the top of their scope during compilation.

Closures  
Functions that "remember" variables from their lexical scope even after the outer function has executed.

Prototype & Inheritance  
JS uses prototype-based inheritance; objects can inherit properties/methods from other objects.

Event Loop & Concurrency  
JS handles async operations (setTimeout, promises, async/await) via the event loop.

DOM Manipulation  
JS interacts with HTML/CSS via the Document Object Model (DOM).

ES6+ Features  
Modern JS introduced let/const, arrow functions, template literals, classes, modules, promises, async/await, destructuring, spread/rest operators.

Usage
Frontend Development: DOM manipulation, event handling, animations.

Backend Development: Node.js enables server-side JS.

APIs: AJAX, Fetch API, JSON handling.

Frameworks/Libraries: React, Angular, Vue, jQuery.

Tooling: Webpack, Babel, ESLint.

🎯 20 Interview Questions & Answers
1. What is JavaScript and why is it important?
Answer: JavaScript is a high-level, interpreted programming language used to make web pages interactive. It’s essential because it runs in all major browsers, enabling dynamic content, event handling, and communication with servers via APIs.

2. Explain the difference between var, let, and const.
Answer:

var: Function-scoped, hoisted, allows redeclaration.

let: Block-scoped, hoisted but not initialized, no redeclaration.

const: Block-scoped, must be initialized, cannot be reassigned (but objects/arrays can be mutated).

3. What is hoisting in JavaScript?
Answer: Hoisting is the process where variable and function declarations are moved to the top of their scope during compilation. For example:

js
console.log(a); // undefined
var a = 10;
Here, var a is hoisted but not its value.

4. What are closures? Give an example.
Answer: A closure is a function that retains access to variables from its lexical scope even after the outer function has executed.

js
function outer() {
  let count = 0;
  return function inner() {
    count++;
    return count;
  };
}
const counter = outer();
console.log(counter()); // 1
console.log(counter()); // 2
5. Explain the event loop in JavaScript.
Answer: The event loop manages asynchronous operations. The call stack executes synchronous code, while async tasks (like setTimeout, promises) go to the task/microtask queue. The event loop checks the stack and pushes queued tasks when the stack is empty.

6. Difference between synchronous and asynchronous code?
Answer:

Synchronous: Executes line by line, blocking further execution until complete.

Asynchronous: Executes non-blocking tasks, allowing other code to run while waiting (e.g., API calls, timers).

7. What is the difference between == and ===?
Answer:

==: Loose equality, performs type coercion.

===: Strict equality, checks both value and type.
Example: 5 == "5" → true, but 5 === "5" → false.

8. What are promises in JavaScript?
Answer: Promises represent the eventual completion or failure of an async operation. They have three states: pending, fulfilled, rejected.

js
fetch("data.json")
  .then(res => res.json())
  .then(data => console.log(data))
  .catch(err => console.error(err));
9. Explain async/await.
Answer: async/await is syntactic sugar over promises, making async code look synchronous.

js
async function getData() {
  try {
    let res = await fetch("data.json");
    let data = await res.json();
    console.log(data);
  } catch (err) {
    console.error(err);
  }
}
10. What is the difference between null and undefined?
Answer:

undefined: A variable declared but not assigned.

null: Explicitly assigned "no value".
Example: let a; console.log(a); // undefined vs let b = null;.

11. What is the difference between function declaration and function expression?
Answer:

Declaration: Hoisted, can be called before definition.

Expression: Not hoisted, defined at runtime.

js
function foo() {} // declaration
const bar = function() {}; // expression
12. Explain prototypes in JavaScript.
Answer: Every JS object has a prototype, which is another object it inherits properties/methods from. This enables prototype-based inheritance.

13. What is the difference between for...in and for...of?
Answer:

for...in: Iterates over object keys.

for...of: Iterates over iterable values (arrays, strings, maps).

14. What is the difference between call, apply, and bind?
Answer:

call: Invokes function with given this and arguments.

apply: Similar to call, but arguments are passed as an array.

bind: Returns a new function with bound this.

15. What is the difference between shallow copy and deep copy?
Answer:

Shallow copy: Copies only references for nested objects.

Deep copy: Creates entirely new copies of nested objects.
Example: Object.assign() → shallow, structuredClone() → deep.

16. What is the difference between localStorage, sessionStorage, and cookies?
Answer:

localStorage: Stores data with no expiration.

sessionStorage: Stores data for the session only.

cookies: Small data stored with expiration, sent with every HTTP request.

17. Explain the difference between map, filter, and reduce.
Answer:

map: Transforms each element.

filter: Returns elements that pass a condition.

reduce: Accumulates values into a single result.

18. What is the difference between undefined and not defined?
Answer:

undefined: Variable declared but not assigned.

not defined: Variable never declared.
Example: let a; console.log(a); // undefined vs console.log(b); // ReferenceError.

19. What is the difference between document.getElementById and querySelector?
Answer:

getElementById: Selects element by ID, faster.

querySelector: Selects first element matching CSS selector, more flexible.

20. What are arrow functions and their limitations?
Answer: Arrow functions are concise function syntax:

js
const add = (a, b) => a + b;
Limitations:

No this binding (inherits from parent scope).

Cannot be used as constructors.

No arguments object.
