function draw(){
var canvas = document.getElementById('circle');
if (canvas.getContext){
var ctx = canvas.getContext('2d');
var X = canvas.width / 2;
var Y = canvas.height / 2;
var R = 45;
const data=["1","2","3","4","5","6","7","8","9","10"]
const data2=["1","2","3","4","5","6","7","8","9","10"]
const data3=["1","2","3","4","5","6","7","8","9","10"]
const data4=["1","2","3","4","5","6","7","8","9"]

  for (let i=0;i<10;i++){
set_row_or_col=[Math.floor(Math.random()*(4))]
//<test for specific alignment>
  //set_row_or_col=3

  if (set_row_or_col==0){

 ctx.beginPath();
    data_taken=[Math.floor(Math.random()*(data.length))]


    set_x_or_y=[Math.floor(Math.random()*(2))]


    data_saved=data[data_taken]


    data[data_taken]=data[(data).length-1]


    data.pop();


    ctx.moveTo(X+2*data_saved, Y);
    ctx.lineTo(X+2*data_saved,Y+20);
    if (set_x_or_y==0) {
      ctx.strokeStyle = "rgba(0,0,0,1)";

    }
    if (set_x_or_y==1) {
      ctx.strokeStyle = "rgba(255,255,255,1)";

    }
    ctx.lineWidth =2;
   ctx.stroke();
  }

  if (set_row_or_col==1 & data2.length>0){
ctx.beginPath();

    data_taken2=[Math.floor(Math.random()*(data2.length))];


    set_x_or_y2=[Math.floor(Math.random()*(2))];



    data_saved2=data2[data_taken2];


    data2[data_taken2]=data2[(data2).length-1];

  data2.pop();

    ctx.moveTo(X, Y+2*data_saved2);
    ctx.lineTo(X+20,Y+2*data_saved2);

    if (set_x_or_y2==0) {
      ctx.strokeStyle = "rgba(0,0,0,1)";
    }
    if (set_x_or_y2==1) {
      ctx.strokeStyle = "rgba(255,255,255,1)";

    }
      ctx.lineWidth = 2;
      ctx.stroke();
  }
  if (set_row_or_col==2 & data3.length>0){

  ctx.beginPath();
    data_taken3=[Math.floor(Math.random()*(data3.length))]


    set_x_or_y3=[Math.floor(Math.random()*(2))]


    data_saved3=data3[data_taken3]


    data3[data_taken3]=data3[(data3).length-1]


    data3.pop();


    ctx.moveTo(X+2*data_saved3, Y);
    ctx.lineTo(X+20,Y+20-2*data_saved3);
     if (set_x_or_y3==0) {
      ctx.strokeStyle = "rgba(0,0,0,1)";

    }
    if (set_x_or_y3==1) {
      ctx.strokeStyle = "rgba(255,255,255,1)";

    }
    ctx.lineWidth =2;
   ctx.stroke();
  }
  if (set_row_or_col==3 & data4.length>0){

  ctx.beginPath();
    data_taken4=[Math.floor(Math.random()*(data4.length))]


    set_x_or_y4=[Math.floor(Math.random()*(2))]


    data_saved4=data4[data_taken4]


    data4[data_taken4]=data4[(data4).length-1]


    data4.pop();


    ctx.moveTo(X, Y+2*data_saved4);
    ctx.lineTo(X+20-2*data_saved4,Y+20);
     if (set_x_or_y4==0) {
      ctx.strokeStyle = "rgba(0,0,0,1)";

    }
    if (set_x_or_y4==1) {
      ctx.strokeStyle = "rgba(255,255,255,1)";

    }
    ctx.lineWidth =2;
   ctx.stroke();
  }
}
}
}
