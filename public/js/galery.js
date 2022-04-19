
    let list = document.querySelectorAll('.list');
    let imgitem = document.querySelectorAll('.itemgalery');

    for (let i = 0; i < list.length; i++) {
        list[i].addEventListener('click', function () {
            for (let j = 0; j < list.length; j++) {
                list[j].classList.remove('active');
            }
            this.classList.add('active');
            let dataFilter = this.getAttribute('data-filter');

            for (let k = 0; k < imgitem.length; k++) {
                imgitem[k].classList.remove('active');
                imgitem[k].classList.add('hide');

                if (imgitem[k].getAttribute('data-item') == dataFilter || dataFilter == "all") {
                    imgitem[k].classList.remove('hide');
                    imgitem[k].classList.add('active');
                }
            }
        })
    }

document.querySelectorAll('.imggalery img').forEach(image => {
        image.onclick = () => {
            document.querySelector('.popup-image').style.display = 'block';
            document.querySelector('.popup-image img').src = image.getAttribute('src');
        }
    })

document.querySelector('.popup-image span').onclick = () => {
        document.querySelector('.popup-image').style.display = 'none';
}

