const voteButtons = document.querySelectorAll('.voter');
voteButtons.forEach(button => {
  button.addEventListener('click', async () => {
    const answerId = button.getAttribute('data-answer-id');
    await axios.post('/voter', { answerId });
    location.reload();
  });
});
const devoteButtons = document.querySelectorAll('.devoter');
devoteButtons.forEach(button => {
  button.addEventListener('click', async () => {
    const answerId = button.getAttribute('data-answer-id');
    await axios.post('/devoter', { answerId });
    location.reload();
  });
});


const setActiveCategory = () => {
  const categories = document.querySelectorAll('a[href^="/category/"]');
  categories.forEach(category => {
    category.classList.toggle('active-menu', category.getAttribute('href') === window.location.pathname);
  });
};

setActiveCategory();
