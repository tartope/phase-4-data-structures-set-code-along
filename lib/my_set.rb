# your code here
class MySet

    #1 Initializes a new MySet and adds any values from the enumerable; create new instances of our data structure.
    def initialize(enumerable = []) # initialize a new, empty set, pass in an existing collection of values, such as an array, and create a new set with just the unique values, 
        @hash = {} # create a Hash and stores the values passed in as keys on the Hash
        enumerable.each do |value|
            @hash[value] = true
        end
    end

    #2 Checks if the value is already included in the set, and returns true if so, and false if not. It also must have a O(1) runtime.
    def include?(value)
        @hash.has_key?(value)
    end

    #3 This method needs to add a value to the set if it isn't already present, and return the updated set. It also must have a O(1) runtime.
    def add(value)
        @hash[value] = true # add a value as a key on the hash
        self                # return the updated set
    end

    #4 This method removes a value from the set, and returns the updated set. It also must have a O(1) runtime.
    def delete(value)
        @hash.delete(value) # removes a value
        self                # returns the updated set
    end    

    #5 This method simply needs to return the number of elements in the set.
    def size
        @hash.size
    end

end