const jsCheckboxes = () => {
  const categoryChoices = document.querySelectorAll('.category-choice');
  categoryChoices.forEach((categoryChoice) => {
    categoryChoice.addEventListener('click', (event) => {
      event.currentTarget.classList.toggle('active'); //change of color front boutons lors du click
      const checkboxId = event.currentTarget.dataset.for;
      const hiddenCheckbox = document.querySelector(`#${checkboxId}`);
      if (hiddenCheckbox.checked) {
          hiddenCheckbox.checked = false;
      } else {
        hiddenCheckbox.checked = true;
      };
    });
  });
};

export { jsCheckboxes };

//tick the checkbox + change of color

