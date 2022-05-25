# frozen_string_literal: true

class AddNameAndHostToHouse < ActiveRecord::Migration[7.0]
  def change
    add_column :houses, :name, :string
    add_column :houses, :host, :string
  end
end
