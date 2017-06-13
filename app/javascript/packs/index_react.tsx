import * as React from "react";
import * as ReactDOM from "react-dom";

import Hello from "./hello_react.tsx";

ReactDOM.render(
  <Hello name="Willson" />,
  document.getElementById("root")
);

console.log('This is index.tsx')
