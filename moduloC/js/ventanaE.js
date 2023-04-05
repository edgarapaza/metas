
const open = document.getElementById('open');
const open1 = document.getElementById('open1');
const modal_container = document.getElementById('modal_container');
const modal_container1 = document.getElementById('modal_container1');
const close = document.getElementById('close');
const close1 = document.getElementById('close1');

open.addEventListener('click', () => {
    modal_container.classList.add('show');
});

close.addEventListener('click', () => {
    modal_container.classList.remove('show');
});
open1.addEventListener('click', () => {
    modal_container1.classList.add('show');

});

close1.addEventListener('click', () => {
    modal_container1.classList.remove('show');
});

function Tipo(valor)
{
    document.getElementById('tipo').value = valor;
}