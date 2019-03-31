require 'lrucache.rb'
require 'rspec'

describe LRUCache do
  subject (:cache) { LRUCache.new(3) }  
  describe "#initialize" do
    it "sets the size of the cache" do
        expect(cache).to be_a(LRUCache)
    end
    it "creates an empty cache" do
        expect(cache.cache).to eq([])
    end
    it "sets the size" do
        expect(cache.size).to eq(3)
    end

  end

  describe "#count" do 

    it "returns the size of the cache" do
        expect(cache.count).to eq(0)
    end

  end

  describe "#add" do 
    
     context "when the cache is full" do
        let (:queue) { [2,3,4]}
        it "deletes the first element, then pushes the element in" do
            cache.add(1)
            cache.add(2)
            cache.add(3)
            cache.add(4)
            expect(cache.cache).to eq(queue)
        end
        it "doesn't exceed the size of the cache" do
            cache.add(1)
            cache.add(2)
            cache.add(3)
            cache.add(4)
            expect(cache.count).to eq(3) 
        end
     end

     context "when the cache isn't full" do
        it "should add it to the cache" do 
            cache.add(1)
            expect(cache.cache).to eq([1])
        end
     end

     context "when the cache is pushing in a duplicate" do
        it "deletes the first element, then pushes the same element in" do
            cache.add(1)
            cache.add(1)
            expect(cache.cache).to eq([1])
            expect(cache.count).to eq(1)
        end
     end

  end

end