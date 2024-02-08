// JavaScript code to simulate the provided AutoHotkey script

// Create the container element for the GUI window
const Gui0 = document.createElement("div");
Gui0.style.position = "absolute";
Gui0.style.width = "500px"; // Set the width
Gui0.style.height = "400px"; // Set the height
Gui0.style.backgroundColor = "#121212";
Gui0.style.color = "white";
Gui0.style.fontSize = "15px";
Gui0.style.padding = "10px";
Gui0.style.border = "2px solid white";

// Calculate center position
Gui0.style.left = (window.innerWidth - parseInt(Gui0.style.width)) / 2 + "px";
Gui0.style.top = (window.innerHeight - parseInt(Gui0.style.height)) / 2 + "px";

document.body.appendChild(Gui0); // Append the GUI window to the body

// Create text content elements
const Gui0TextContent1 = document.createElement("div");
Gui0TextContent1.id = "Gui0TextContent1"; // Set ID for referencing
Gui0TextContent1.textContent = "TitleText";
Gui0TextContent1.style.position = "absolute"; // Set position to absolute
Gui0TextContent1.style.left = "0px"; // Set initial x position
Gui0TextContent1.style.top = "0"; // Set initial y position
Gui0TextContent1.style.width = "100px"; // Set width
Gui0TextContent1.style.height = "30px"; // Set height
Gui0TextContent1.style.marginBottom = "10px";
Gui0TextContent1.style.color = "white";
Gui0TextContent1.style.fontSize = "";

const Gui0TextContent2 = document.createElement("div");
Gui0TextContent2.id = "Gui0TextContent2"; // Set ID for referencing
Gui0TextContent2.textContent = "More Text";
Gui0TextContent2.style.position = "absolute"; // Set position to absolute
Gui0TextContent2.style.left = "0"; // Set initial x position
Gui0TextContent2.style.top = "50px"; // Set initial y position
Gui0TextContent2.style.width = "100px"; // Set width
Gui0TextContent2.style.height = "30px"; // Set height

// Create input field element (editbox)
const Gui0inputField1 = document.createElement("input");
Gui0inputField1.id = "Gui0inputField1"; // Set ID for referencing
Gui0inputField1.type = "text";
Gui0inputField1.placeholder = "Type here...";
Gui0inputField1.style.position = "absolute"; // Set position to absolute
Gui0inputField1.style.left = "0"; // Set initial x position
Gui0inputField1.style.top = "100px"; // Set initial y position
Gui0inputField1.style.width = "200px"; // Set width
Gui0inputField1.style.height = "30px"; // Set height

// Add event listener to input field to log value changes
Gui0inputField1.addEventListener("input", function () {
  func2();
});

// Create button element 1
const Gui0button1 = document.createElement("button");
Gui0button1.id = "Gui0button1"; // Set ID for referencing
Gui0button1.textContent = "Click Me 1";
Gui0button1.style.position = "absolute"; // Set position to absolute
Gui0button1.style.left = "0"; // Set initial x position
Gui0button1.style.top = "150px"; // Set initial y position
Gui0button1.style.width = "100px"; // Set width
Gui0button1.style.height = "30px"; // Set height
Gui0button1.onclick = function (event) {
  function1(event);
};

// Create button element 2
const Gui0button2 = document.createElement("button");
Gui0button2.id = "Gui0button2"; // Set ID for referencing
Gui0button2.textContent = "Click Me 2";
Gui0button2.style.position = "absolute"; // Set position to absolute
Gui0button2.style.left = "0"; // Set initial x position
Gui0button2.style.top = "200px"; // Set initial y position
Gui0button2.style.width = "100px"; // Set width
Gui0button2.style.height = "30px"; // Set height
Gui0button2.onclick = function (event) {
  function1(event);
};

// Append elements to the GUI window
Gui0.appendChild(Gui0TextContent1);
Gui0.appendChild(Gui0TextContent2);
Gui0.appendChild(Gui0inputField1);
Gui0.appendChild(Gui0button1);
Gui0.appendChild(Gui0button2);

// Function to control the position, focus, text, hide, show, enable, or disable elements

function GuiControl(action, id, param1, param2, param3, param4) {
  const element = document.getElementById(id);
  if (element) {
    if (action === "move") {
      // Set position and size
      element.style.left = param1 + "px";
      element.style.top = param2 + "px";
      element.style.width = param3 + "px";
      element.style.height = param4 + "px";
    } else if (action === "focus" && (element instanceof HTMLInputElement || element instanceof HTMLElement)) {
      // Focus on the element
      element.focus();
    } else if (action === "text") {
      // Set new text content
      element.textContent = param1;
    } else if (action === "hide") {
      // Hide the element
      element.style.display = "none";
    } else if (action === "show") {
      // Show the element
      element.style.display = "";
    } else if (action === "enable") {
      // Enable the element
      element.disabled = false;
    } else if (action === "disable") {
      // Disable the element
      element.disabled = true;
    }
  }
}

// Example usage:
// Move Gui0button1 to a new position and change its size
GuiControl("move", "Gui0button1", 0, 0, 150, 30);

function function1(event) {
  // Get the target element from the event
  const target = event.target;
  alert("Button clicked! Target: " + target.textContent);
}

function func2() {
  console.log("Input field value changed:", Gui0inputField1.value);
}

// Close the GUI when the window is closed
window.addEventListener("beforeunload", function () {
  Gui0.remove();
});
