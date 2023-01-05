class ProfilesBackofficeController < ApplicationController
    before_action :autenticate_profile!
    layout 'profiles_backoffice'
end
