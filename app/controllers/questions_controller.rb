class QuestionsController < ApplicationController
  # 質問一覧表示
  def index
  end
  
  # 質問詳細ページ
  def show
  end
  
  # 質問の作成
  def new 
    @question = Question.new
  end
  
  # 質問の登録
  def create
    # p params
    p question_params
  end

  # 質問の編集
  def edit
  end
  
  # 質問の更新
  def update
  end
  
  # 質問の削除
  def destroy
  end
  
  private
  # ストロングパラメーター
  def question_params
    params.require(:question).permit(:title, :name, :content)
  end
end