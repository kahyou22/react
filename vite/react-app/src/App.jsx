import { useState } from "react";
import "./App.css";

function Header({ title }) {
  return (
    <header>
      <h1>
        <a href="/">{title}</a>
      </h1>
    </header>
  );
}

function Nav({ topics }) {
  return (
    <nav>
      <ol>
        {topics.map((topic) => (
          <li key={topic.id}>
            <a href={`/read/${topic.id}`}>{topic.title}</a>
          </li>
        ))}
      </ol>
    </nav>
  );
}

function Article({ title, body }) {
  return (
    <article>
      <h2>{title}</h2>
      {body}
    </article>
  );
}

function App() {
  const [aaa, setAAA] = useState(false);
  const topics = [
    { id: 1, title: "html", body: "html is ..." },
    { id: 2, title: "css", body: "css is ..." },
    { id: 3, title: "javascript", body: "javascript is ..." },
  ];
  return (
    <div>
      <Header title="WEB" />
      <Nav topics={topics} />
      {aaa ? <p>a</p> : <p>b</p>}
      <button
        onClick={() => {
          setAAA(!aaa);
          console.log(aaa);
        }}
      >
        a
      </button>
      <Article title="Welcome" body="Hello, Web" />
    </div>
  );
}

export default App;
