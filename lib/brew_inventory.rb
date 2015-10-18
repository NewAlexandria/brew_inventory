require "brew_inventory/version"
require 'memoist'

module BrewInventory
  extend Memoist

  def list
    `brew list`.split
  end

  def deps
    list.reduce({}) do |h, pkg|
      h.merge({pkg => `brew deps #{pkg}`.split })
    end
  end

  def inventory
    list - deps.values.flatten.sort
  end

  memoize :list, :deps, :inventory
end
