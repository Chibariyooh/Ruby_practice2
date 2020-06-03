class ItemsController < ApplicationController
    #indexアクション以外の時にはindexアクションを実行
    #そうしないとログインしていなくても他のページを見見ることが可能になるため。
    before_action :move_to_index, except: :index
    
    def index
        @items = Item.all
    end
    #商品の追加
    def new
        @item = Item.new
    end

    #データの追加
    #current_userは現在ログインしているユーザを指す
    def create
        Item.create(name: item_params[:name], price: item_params[:price], user_id: current_user.id)
    end

    #サインインしていないユーザはindexアクションが強制的に実行される
    def move_to_index
        redirect_to action: :index unless user_signed_in?
    end

    private

    def item_params
        params.require(:item).permit(:name, :price)
    end

end
