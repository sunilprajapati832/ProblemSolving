from os import remove

stock_prices = [298,305,320,301,292] # array initializing
print(type(stock_prices))  # <class 'list'> is array in python
print(stock_prices) # print array
print("stock_prices of Day 2: " ,stock_prices[2]) # finding value of particular index in array

for i in range (len(stock_prices)): # for loop (lookup)
    if stock_prices[i] == 320:
        print("Day of given stock_prices is:" ,i)

for price in stock_prices: # array traverser O(n) time complexity
    print(price)

for index, price in enumerate (stock_prices): # enumerate() function
    print(f"Day : {index}, stock_prices : {price}")

stock_prices.insert(1,297) # array insertion O(n) time complexity
print(stock_prices)
stock_prices.remove(stock_prices[1]) # array deletion O(n) time complexity
print(stock_prices)