class NavBar extends HTMLElement {
  constructor() {
    super();
  }
  
  connectedCallback() {
    const shadowDOM = this.attachShadow({ mode: 'closed' });
    // const template = document.getElementById('hello-template').content.cloneNode(true);
    // shadowDOM.appendChild(template);
  }
}

customElements.define('nav-bar', NavBar);