angular.module('search', ['unit'])
  .controller('SearchController', ['unitConverter',
    function(unitConverter){
      this.location1 = 0;
      this.location2 = 10;
      this.inUnit = 'miles';
      this.units = unitConverter.units;

      this.distance = function distance(outUnit) {
      return unitConverter.convert(Math.abs(this.location1 - this.location2), this.inUnit, outUnit);
    };

    this.calculate = function calculate() {
      window.alert("Done!");
    };
  }]);
