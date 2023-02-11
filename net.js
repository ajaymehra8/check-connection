const popUp=document.querySelector(".popUp");
const wifiIcon=document.querySelector(".icon i");
const popUpTitle=document.querySelector(".popUp .title");
const popUpDesc=document.querySelector(".popUp .desc");
const reconnect=document.querySelector(".reconnect");

let isOnline=true,intervalId,timer=10;
const checkConnection=async ()=>{
try{
const response= await fetch("https://jsonplaceholder.typicode.com/posts");
  isOnline=response.status>=200 && response.status<300
  
}catch(error){
isOnline=false;
}
  timer=10;
  clearTimeout(intervalId);
  handlePopup(isOnline);
}
const handlePopup=(status)=>{
  if(status){
    wifiIcon.className="bi bi-wifi-2";
    popUpTitle.innerText="Restored Connection";
    popUpDesc.innerText="Your device is now successfully connected."
    popUp.classList.add("online");
    return setTimeout(()=>{popUp.classList.remove("show","online");},2000);
  }
    wifiIcon.className="bi bi-wifi-off";
    popUpTitle.innerText="Lost Connection";
    popUpDesc.innerHTML="Your network is unavailable. We will attempt you to reconnect in <b>10</b> seconds"
   
  popUp.className="popUp show";
  intervalId=setInterval(()=>{
    timer--;
    if(timer===0){
      checkConnection();
      
    }
    popUp.querySelector(".desc b").innerText=timer;
  },1000);
}
setInterval(()=>isOnline&&checkConnection(),3000);
reconnect.addEventListener("click",checkConnection);
