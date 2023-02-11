
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400&display=swap');
*{
  padding: 0;
  margin: 0;
  box-sizing:border-box;
}
body{
 font-family: 'Poppins', sans-serif; 
  background: #E3F2FD;
}
.popUp{
  position: absolute;
  left: 50%;
  top: -25px;
  visibility:hidden;
  width:490px;
  border-radius:5px;
  padding: 13px 17px 20px;
  background: #fff;
  border-top:3px solid #EA4D67;
  box-shadow:0 10 25 rgba(52,87,220,0.1);
  transform:translateX(-50%);
  display: flex;
  transition:all 0.5s ease;
}
.popUp.show{
  top: 0;
  visibility:visible;
}
.popUp.online{
  border-color:#2ecc71;
}
.popUp .icon i{
  width: 40px;
  height: 40px;
  background: #EA4D67;
  color: #fff;
  margin-right: 15px;
  font-size: 1.2ren;
  display:flex;
  align-items: center;
  justify-content: center;
  border-radius: 50%;
}
.popUp.online .icon i{
  background: #2ecc71;
}
.title{
  font-size: 1.2rem;
}
.desc{
  color: #474747;
  margin: 3px 0 10px;
  font-size: 1.05rem;
}
.reconnect{
  border:none;
  outline:none;
  color: #fff;
  font-size: 0.95rem;
  padding: 9px 15px;
  background: #5372f0;
  border-radius:4px;
}
.popUp.online .reconnect{
  background: #bfbfbf;
  pointer-events:none;
}
@media(550px>=width){
  .popUp{
    width:100%;
    padding: 10px 15px 17px ;
  }
}
