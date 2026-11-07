# hashmap
This is a HashMap class made to learn hashmap

The hashmap can be made by

```ruby
hashmap = HashMap.new
```
## The hashmap hash the following methods

### #set(key, value) 
allow to enter a entries

```ruby
hashmap = HashMap.new
hashmap.set('number', 1)
hashmap.set('car', 'red')
hashmap.set('key', 'value')
```

### #entries
return a array of key value pair

```ruby
hashmap = HashMap.new
hashmap.set('number', 1)
hashmap.set('car', 'red')
hashmap.set('key', 'value')

hashmap.entries 
```

### #get(key)
return the value of the key

```ruby
hashmap = HashMap.new
hashmap.set('number', 1)
hashmap.set('car', 'red')
hashmap.set('key', 'value')

hashmap.get('car') # returns red 
```

### #has?(key)
returns true if key exits else false

```ruby
hashmap = HashMap.new
hashmap.set('num1', 1)
hashmap.set('num2', 2)

hashmap.has?('num2') # returns true
hashmap.has?('num3') # returns false 
```

### #remove(key)
removes the entry from the hashmap

```ruby
hashmap = HashMap.new
hashmap.set('num1', 1)
hashmap.set('num2', 2)

hashmap.has?('num2') # returns true
hashmap.remove('num2')
hashmap.has?('num2') # returns false
```

### #length
returns the number of entries in hashmap

```ruby
hashmap = HashMap.new
hashmap.set('num1', 1)
hashmap.set('num2', 2)

hashmap.length # return 2
```

### #clear 
removes all entries from the hashmap

```ruby
hashmap = HashMap.new
hashmap.set('num1', 1)
hashmap.set('num2', 2)
hashmap.length # return 2

hashmap.clear

hashmap.length # return 0
```
### #keys
return all keys in an array

```ruby
hashmap.new
hashmap.set('key1', 'value1')
hashmap.set('key2', 'value1')
hashmap.set('key3', 'value1')

hashmap.keys # returns []
```
### #values
return all values in an array

```ruby
hashmap.new
hashmap.set('key1', 'value1')
hashmap.set('key2', 'value1')
hashmap.set('key3', 'value1')

hashmap.values # returns []
```



