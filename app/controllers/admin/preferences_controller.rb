class Admin::PreferencesController < ApplicationController

  def index
    if Preference.all.empty?
      Preference.create(artist_sort_order: "DESC", song_sort_order: "ASC", allow_create_artists: false, allow_create_songs: true)
    end
    @preference = Preference.first
  end

end
