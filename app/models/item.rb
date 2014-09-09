class Item < ActiveRecord::Base
validates :price, numericality: { greater_than: 0 }
validates :name, :description, presence: true

after_initialize { puts "initialize" } # Item.new; Item.first
after_save { puts "save" } # Item.save, Item.update_attributes, Item.create
after_create { puts "create" } # Item.create
after_update { puts "update" } # Item.update
after_destroy { puts "destroy" } # Item.destroy
end
