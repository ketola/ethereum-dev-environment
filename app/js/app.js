/*globals $, SimpleStorage, document*/

var getTicketTimestamp = function (){
  return Tickeths.getTicketTimestamp().then(result => {
    console.log(result);
    document.getElementById('ticket-timestamp').innerHTML = new Date(result.toNumber()*1000).toString();
  }).catch(err => console.log(err));
}

var buyTicket = function (){
  return Tickeths.buyTicket().then(function(result) {
    console.log(result);
    document.getElementById('ticket-timestamp').innerHTML = JSON.stringify(result);
  }).catch(err => console.log(err));
}
