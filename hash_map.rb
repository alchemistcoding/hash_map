class HashMap
  attr_reader :length
  def initialize(load_factor = 0.75, capacity = 16)
    @load_factor = load_factor
    @capacity = capacity
    @storage = []
    @length = 0
  end

  def hash(key)
    hash_code = 0
    prime_number = 7

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code % @capacity
  end

  def set(key, value)
    index = hash(key)

    if @storage[index] == nil
      @storage[index] = [[key, value]]

      @length += 1
      @capacity *= 2  if @length > (@load_factor * @capacity)
      return
    end

    @storage[index].each do |el|
      if el[0] == key
        el[1] = value
        return
      end
    end

    @storage[index].push([key, value])
    @length += 1
    @capacity *= 2  if @length > (@load_factor * @capacity)
  end

  def get(key)
    index = hash(key)

    @storage[index].each do |el|
      return el[1] if el[0] == key
    end

    nil
  end

  def has?(key)
    return false if get(key) == nil
    true
  end

  def remove(key)
    index = hash(key)
    bucket = @storage[index]

    0.upto(bucket.length) do |i|

     if bucket[i][0] == key
       value = bucket[i][1]

       @storage[index].delete_at(i)
       @length -= 1

       return value
     end
    end

    nil
  end

  def clear 
    @storage = []
    @length = 0
  end

  def keys
    key_arr = []
    @storage.each do |bucket|
      next if bucket == nil
      bucket.each do |el|
        key_arr.push(el[0])
      end
    end

    key_arr
  end

  def values
    values_arr = []
    @storage.each do |bucket|
      next if bucket == nil
      bucket.each do |el|
        values_arr.push(el[1])
      end
    end

    values_arr
  end

  def entries
    entries_arr = []
    @storage.each do |bucket|
      next if bucket == nil
      bucket.each do |el|
        entries_arr.push(el)
      end
    end
    entries_arr
  end

end



