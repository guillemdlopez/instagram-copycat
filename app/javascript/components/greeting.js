import Typed from 'typed.js';

const greetingHomePage = () => {
  const homePage = document.querySelector("#greeting-typed-text");
  if (homePage) {
    new Typed("#greeting-typed-text", {
      strings: ["Welcome to my Instagram Copycat!"],
      typeSpeed: 50,
      loop: false
    });
  }
}
export { greetingHomePage };
