$(document).ready(function () {
    $("#sidebar").mCustomScrollbar({
        theme: "minimal"
    });
});

$('body').scrollspy({ target: '#sidebar' });
$("#sidebar a").on('click', function (event) {
    if (this.hash !== "") {
        event.preventDefault();
        const hash = this.hash;
        $('html, body').animate({
        scrollTop: $(hash).offset().top
        }, 800, function () {
        window.location.hash = hash;
        });
    }
});

document.getElementById('menu-button').addEventListener('click',(e)=>{
    e.stopPropagation();
    document.getElementById('sidebar').classList.add('sidebar-visible');
    setTimeout(()=>{
        document.getElementById('sidebar-menu').classList.add('menu-visible');
    }, 250);
})

document.getElementById('content').addEventListener('click', (e)=>{
    document.getElementById('sidebar').classList.remove('sidebar-visible');
    document.getElementById('sidebar-menu').classList.remove('menu-visible');
})

// let menuItem = document.querySelectorAll('.sidebar-menu-item');
// menuItem.forEach(item => {
//     item.addEventListener('click', ()=>{
//         item.firstElementChild.nextElementSibling.click();
//     })
// })

// document.getElementById('menu-btn').addEventListener('click', (e)=> {
//     e.stopPropagation();
//     document.getElementById('sidebar').classList.add('visible');
//     document.getElementById('arrow').classList.add('rotate');
// })

// document.getElementById('content').addEventListener('click', ()=> {
//     document.getElementById('sidebar').classList.remove('visible');
//     document.getElementById('arrow').classList.remove('rotate');
// })