const startTest = () => {

  if (document.getElementById('start_test')) {

    const start_button = document.querySelector("#start_test");
    const show_text = document.querySelector("#intro_text");
    const show_questions = document.querySelector("#show_questions");

    start_button.addEventListener("click", (event) => {
      show_questions.style.display = "block";
      show_text.style.display = "none";
    });
  };
}

export { startTest };

