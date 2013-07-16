class CreateWords < ActiveRecord::Migration
  def change
  	create_table :words do |t|
  		t.string :dict_word
  		t.string :lower_case_word
  	end
  end
end
