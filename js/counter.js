const counter = document.querySelector(".counter-number");
async function updateCounter() {
  let response = await fetch(
    "https://z9jtsttg5d.execute-api.ca-central-1.amazonaws.com/counter"
  );
  let data = await response.json();
  counter.innerHTML = `This page has been visited ${data} times.`;
}

updateCounter();