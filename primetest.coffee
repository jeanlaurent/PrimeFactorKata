# Run with mocha --ui qunit --compilers coffee:coffee-script --growl primetest.coffee
expect = require("expect.js")

list = (number) ->
	primes = []
	candidate = 2
	while number > 1
		while (number % candidate == 0)
			primes.push candidate
			number /= candidate
		candidate++;
	primes

suite('PrimeKata')

test("should list 1 for 1", ->
	expect( list(1) ).to.eql []
)


test("should list 2 for 2", ->
	expect( list(2) ).to.eql [2]
)

test("should list 3 for 3", ->
	expect( list(3) ).to.eql [3]
)

test("should list 2,2 for 4", ->
	expect( list(4) ).to.eql [2,2]
)

test("should list 2,3 for 6", ->
	expect( list(6) ).to.eql [2,3]
)

test("should list 3,3 for 9", ->
	expect( list(9) ).to.eql [3,3]
)

test("should list 2,2,2 for 8", ->
	expect( list(8) ).to.eql [2,2,2]
)

