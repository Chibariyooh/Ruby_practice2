class Item < ApplicationRecord
    #userは単数形
    belongs_to :user
end
