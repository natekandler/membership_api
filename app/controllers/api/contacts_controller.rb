class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.includes(:groups)
    render json: @contacts, include: :groups
  end
end
