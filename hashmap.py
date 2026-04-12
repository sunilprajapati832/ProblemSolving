
stock_prices = []
# stock_prices = []
with open("stock_prices.csv","r") as f:
    for line in f:
        tokens = line.split(',')
        day = tokens[0]
        price = float(tokens[1])
        stock_prices.append([day,price])
    
# print(stock_prices)
# print(stock_prices[0])

# Find stock price on March 9
for element in stock_prices:
    if element[0] == 'march 9':
        print(element[1])

# Process using python dictionary
stock_prices = {}
with open("stock_prices.csv","r") as f:
    for line in f:
        tokens = line.split(',')
        day = tokens[0]
        price = float(tokens[1])
        stock_prices[day] = price

print(stock_prices)

# Find stock price on March 9
print(stock_prices['march 9'])


# Implement Hash Table
def get_hash(key):
    hash = 0
    for char in key:
        hash += ord(char)
    return hash % 100

get_hash('march 6')

class HashTable:  
    def __init__(self):
        self.MAX = 100
        self.arr = [None for i in range(self.MAX)]
        
    def get_hash(self, key):
        hash = 0
        for char in key:
            hash += ord(char)
        return hash % self.MAX
    
    def __getitem__(self, index):
        h = self.get_hash(index)
        return self.arr[h]
    
    def __setitem__(self, key, val):
        h = self.get_hash(key)
        self.arr[h] = val    
        
    def __delitem__(self, key):
        h = self.get_hash(key)
        self.arr[h] = None

t = HashTable()
t["march 6"] = 310
t["march 7"] = 420

print(t.arr)

t["dec 30"] = 88
print(t["dec 30"])

del t["march 6"]
print(t.arr)
