const placeholder = document.getElementById("ajax");
const pageUrl = "/article/page_articles/";
const countUrl = "/article/count_articles";

let xmlHttp = new XMLHttpRequest();
xmlHttp.open("GET", countUrl, false); // false for synchronous request
xmlHttp.send(null);
const nbPage = xmlHttp.responseText;
let currentPage = 0;

const mainAjax = () => {
    placeholder.innerHTML = '';
    loadPageHtml(placeholder, 0);
};

const loadPageHtml = (element, pageNb) => {
    let xmlHttp = new XMLHttpRequest();
    xmlHttp.open("GET", pageUrl + pageNb, false); // false for synchronous request
    xmlHttp.send(null);
    let contentBefore = element.innerHTML
    let newContent = contentBefore + xmlHttp.responseText;
    element.innerHTML = newContent;

};

const loadNextPage = () => {

    const {
        scrollTop,
        scrollHeight,
        clientHeight
    } = document.documentElement;


    if (scrollTop + clientHeight >= scrollHeight/1.3 &&
        currentPage < nbPage - 1) {
        currentPage++;
        // alert("atteint bas de page n° "+currentPage+" / "+nbPage)
        loadPageHtml(placeholder, currentPage);
    }
};

window.addEventListener("load", mainAjax);

window.onload = () => {
    // Ecouteur d'évènement sur scroll
    window.addEventListener('scroll', () => loadNextPage());

}

