// menu de selection de category selon ecran (hamburger galerie)


let sideMenu = document.querySelector('#side-menu');
let sideBar = document.querySelector('.side-bar');

sideMenu.onclick = () => {
sideMenu.classList.toggle('fa-times');
sideBar.classList.toggle('active');
};


// gestion des popup des images au click

let galleryImages = document.querySelectorAll('.image-container img');
let imagePop = document.querySelector('.image-popup');

galleryImages.forEach(img => {
img.onclick = () => {
let imageSrc = img.getAttribute('src');
imagePop.style.display = 'flex';
imagePop.querySelector('img').src = imageSrc;
};
});

imagePop.onclick = () => {
imagePop.style.display = 'none';
};

// gestion de selection par categories


let categoryBtn = document.querySelectorAll('.category .btn');

categoryBtn.forEach(btn => {
btn.onclick = () => {
categoryBtn.forEach(remove => remove.classList.remove('active'));
let dataCategory = btn.getAttribute('data-category');
galleryImages.forEach(img => {
var imgCat = img.getAttribute('data-item');
if (dataCategory == 'all') {
img.style.display = 'block';
} else if (dataCategory == imgCat) {
img.style.display = 'block';
} 
else {
img.style.display = 'none';
}
});
btn.classList.add('active');
};
});








