describe("Calculator", function() {
  describe(".performOperation", function() {
    var calc;

    beforeEach(function(){
      calc = new Calculator();
    })
    it("performs addition of two numbers", function() {
      var result = calc.performOperation("add", 2, 3);
      expect(result).toBe(5);
    });

    it("performs subtraction on two numbers", function() {
      var result = calc.performOperation("subtract", 5, 2);
      expect(result).toBe(3);
    });

    it("performs multiplication on two numbers", function() {
      var result = calc.performOperation("multiply", 4, 2);
      expect(result).toBe(8);
    });

    it("performs division on two numbers", function() {
      var result = calc.performOperation("divide", 6, 2);
      expect(result).toBe(3);
    });

  });
});