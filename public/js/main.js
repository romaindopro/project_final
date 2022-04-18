
  // Load the IFrame Player API code asynchronously.
  let tag = document.createElement('script');
  tag.src = "https://www.youtube.com/player_api";
  let firstScriptTag = document.getElementsByTagName('script')[0];
  firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

  // Replace the 'ytplayer' element with an <iframe> and
  // YouTube player after the API code downloads.
  let player;
  function onYouTubePlayerAPIReady() {
    player = new YT.Player('ytplayer', {
      height: '360',
      width: '640',
      videoId: '0gkYHG7G9ZM'
    });
  }





  const buttonNav = document.getElementById("button");
const navMobile = document.getElementById("nav--mobile");
const shadow = document.getElementById("shadow");
const newNav = document.getElementById("newNav");
const newNavUl = document.getElementById("newNavUl");

const main = () => {
  buttonNav.addEventListener("click", displayNav);
  shadow.addEventListener("click", displayNav);
};

const displayNav = () => {
  showOrHideNav(navMobile, "active");
  showOrHideNav(shadow, "active");
  showOrHideNav(newNav, "active");
  showOrHideNav(newNavUl, "active");
};

const showOrHideNav = (element, className) => {
  const result = element.classList.contains(className);

  result ? element.classList.remove(className) : element.classList.add(className);
};

window.addEventListener("load", main);
