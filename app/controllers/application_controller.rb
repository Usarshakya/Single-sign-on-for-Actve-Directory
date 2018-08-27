class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # MASTER_IP = %w(127.0.0.1 ::1 52.193.15.149).freeze
  # protect_from_forgery with: :exception
end
