const formDisplay = () => {
  const firstBtn = document.querySelector("#first-btn");
  console.log(firstBtn);

  const secondSection = document.querySelector("#second-section");
  console.log(secondSection);

  const firstSection = document.querySelector("#first-section");
  console.log(firstSection);


  firstBtn.addEventListener("click", (event) => {
    secondSection.style.display = "block";
    firstSection.style.display = "none";
    });
}

export { formDisplay };
