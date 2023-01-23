const countUrl = 'https://pplknkln88.execute-api.ca-central-1.amazonaws.com'
const countElement = document.getElementById('count');

updateVisitCount();

function updateVisitCount() {
    fetch(countUrl)
        .then(res => res.json())
        .then(res => {
        countElement.innerHTML = res.body.count;
    });
}