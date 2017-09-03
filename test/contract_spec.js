var assert = require('assert');
var Embark = require('embark');
var EmbarkSpec = Embark.initTests();
var web3 = EmbarkSpec.web3;

describe("Tickeths", function() {
  before(function(done) {
    this.timeout(5000);
    var contractsConfig = {
      "Tickeths": {
        args: []
      }
    };
    EmbarkSpec.deployAll(contractsConfig, done);
  });

  it("should set constructor value", function(done) {
    Tickeths.buyTicket(function(result){
      console.log(result);
      Tickeths.getTicketTimestamp(function(result){
        console.log(result);
        done();
      });
    });
  });

});
