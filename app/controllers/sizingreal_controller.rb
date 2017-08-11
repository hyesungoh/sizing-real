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

  end

  def mypage
  end
end
