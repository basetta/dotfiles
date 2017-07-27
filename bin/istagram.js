var likeElement;
var nextElement;
var likeCount = 0;
var delay;
var mytimer ;
function wait(){
console.log("delay="+delay);
delay++;if (delay > 3000) {console.log('Nice! Time for a break.');clearTimeout(mytimer);likeCount = 0;doLike();}else{mytimer=setTimeout(wait, 1000);}

}


function doLike() {
likeElement = document.querySelector('.coreSpriteHeartOpen');
nextElement = document.querySelector('.coreSpriteRightPaginationArrow');
likeCount++;
console.log('Liked ' + likeCount);
var nextTime = Math.random() * (10000 - 4000) + 4000;
 if(likeElement!=null){
likeElement.click();
setTimeout(function() {nextElement.click();}, 1000);}
  else{nextElement.click();}
if (likeCount < 200) {
mytimer = setTimeout(doLike, nextTime);
} else {
delay=0;
clearTimeout(mytimer );wait();


}
}
doLike();
