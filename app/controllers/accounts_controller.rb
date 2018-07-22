# frozen_string_literal: true

class AccountsController < ApplicationController
  def update
    current_user.update(account_params)
    redirect_to root_path
  end

  private

  def account_params
    params.require(:user).permit(:preference)
  end
end
