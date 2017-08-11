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
  end

  def mypage
  end
end
