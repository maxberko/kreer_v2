const scrollTest = () => {
  if (document.getElementsByClassName('button-next')) {
    const next_buttons = document.querySelectorAll('.button-next');
    // const show_next_question = document.querySelector("#q2");

    next_buttons.forEach((next_button) => {
      next_button.addEventListener("click", (event) => {
        const nextQuestionName = event.currentTarget.dataset.nextQuestion
        document.getElementById(nextQuestionName).scrollIntoView({ behavior: 'smooth'});
      });
    });
  };
}

export { scrollTest };

