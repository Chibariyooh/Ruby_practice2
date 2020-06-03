class UsersController < ApplicationController
    def show
        #itemに検索をかけるコード
        #@items = Item.where(user_id: current_user.id)

        @user = User.find(current_user.id)
    end
end
