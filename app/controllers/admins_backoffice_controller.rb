class AdminsBackofficeController < ApplicationController
    before_action :autenticate_admin!
    layout 'admins_backoffice'
end
