class SizingrealController < ApplicationController
  def main
  end

  def input
  end

  def result
    @hash_jean_size = Hash.new
    @hash_jean_size = {"length" => params[:length],
    "waist" => params[:waist],
    "thigh" => params[:thigh],
    "rise" => params[:rise],
    "tail" => params[:tail]}

    @hash_my_size = Hash.new
    @hash_my_size = {"m_length" => params[:m_length],
    "m_waist" => params[:m_waist],
    "m_thigh" => params[:m_thigh],
    "m_rise" => params[:m_rise],
    "m_tail" => params[:m_tail]}

    @diff_length = (@hash_jean_size["length"]).to_f / (@hash_my_size["m_length"]).to_f
    @diff_waist = (@hash_jean_size["waist"]).to_f / (@hash_my_size["m_waist"]).to_f
    @diff_thigh = (@hash_jean_size["thigh"]).to_f / (@hash_my_size["m_thigh"]).to_f
    @diff_rise = (@hash_jean_size["rise"]).to_f / (@hash_my_size["m_rise"]).to_f
    @diff_tail = (@hash_jean_size["tail"]).to_f / (@hash_my_size["m_tail"]).to_f

  end

  def mypage
    @user = User.find(params[:user_id])
  end
  def update
    @user = User.find(params[:user_id])
    @user.length = params[:length]
    @user.waist = params[:waist]
    @user.thigh = params[:thigh]
    @user.rise = params[:rise]
    @user.tail = params[:tail]
    @user.save
    redirect_to "/"
  end
end
