angular.module('unit', [])
  .factory('unitConverter', function(){
    var units = ['miles', 'kms', 'metres'];
    var milesConverter = {
      miles: 1,
      kms: 1.67,
      metres: 167
    };
    var convert = function (amount, inUnit, outUnit) {
      return amount * milesConverter[outUnit] / milesConverter[inUnit];
    };
    return {
      units: units,
      convert: convert
    };
  });
