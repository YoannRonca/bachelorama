const form = document.getElementById('search-form')
const result = document.getElementById('results')

function scrollToResult() => {
  form.addEventListener('submit', (event) => {
    result.scrollIntoView()
  });
}

console.log('coucou')
