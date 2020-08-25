const scrollTest = () => {
  const next_buttons = document.querySelectorAll(".n");
  // const show_next_question = document.querySelector("#q2");

  next_buttons.forEach((next_button) => {
    next_button.addEventListener("click", (event) => {
      console.log("j'y crois moyen");
    });
  });
}

export { scrollTest };
