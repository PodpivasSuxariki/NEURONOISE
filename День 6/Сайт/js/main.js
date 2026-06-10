const burger = document.querySelector('.burger');
const nav = document.querySelector('.main-nav');

if (burger && nav) {
  burger.addEventListener('click', () => {
    const opened = nav.classList.toggle('is-open');
    burger.setAttribute('aria-expanded', String(opened));
  });
}

const form = document.querySelector('.contact-form');
if (form) {
  form.addEventListener('submit', (event) => {
    event.preventDefault();
    alert('Заявка отправлена! Это демонстрационная статичная форма.');
    form.reset();
  });
}
