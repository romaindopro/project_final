
const swiper = new Swiper(".reviews-slider", {
  loop: true,
  spaceBetween: 20,
 autoHeight: true,
 grabCursor: true,
  breakpoints: {
    640: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});

const swipers = new Swiper(".partners-slider", {
  loop: true,
  spaceBetween: 20,
 autoHeight: true,
 grabCursor: true,
 autoplay: true,
  breakpoints: {
    640: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});