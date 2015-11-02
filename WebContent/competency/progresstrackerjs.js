var idVal= 0;
var statename;
var owner="shivam"
var transition="surabhi"
var info="cool lagate hai "

function statenamebyid(id) {
  var states = ["open","staffing","screening","BRP","queued","assigned","queryrerun","inprogress","review","reviewdone","delivered","completed"];
    return states[id-1];
}

function getidbystatename(name) {
  var states = ["open","staffing","screening","BRP","queued","assigned","queryrerun","inprogress","review","reviewdone","delivered","completed"];
    return states.indexOf(name)+1;
}

function dotHoverChange(id){
  statename=statenamebyid(id)
  if(id <= idVal){
    document.getElementById("dotHover").style.display = "inline";
    document.getElementById("state").innerHTML = statename;
    document.getElementById("owner").innerHTML = "owner :"+owner;
    document.getElementById("transition").innerHTML = "transition by :"+ id;
    document.getElementById("comment").innerHTML = id;
  }
}

function dotHoverChange1(id){
   if(id <= idVal){
   document.getElementById("dotHover").style.display = "none";
   }
}

function my(valname) {
  
  var val = getidbystatename(valname);
  idVal = val;
  statename = valname;
  var i;
  
  for (i = 1; i <= val; i++) { 
    document.getElementById(i).className += " border-change";
}
  
  
  document.querySelector('div.overlinebar').style.width = (val-1)*60+'px';
   
   }