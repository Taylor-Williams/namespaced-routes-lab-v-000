class Admin::PreferencesController < ApplicationController

  def index
    if Preference.all.empty?
      @preference = Preference.new(Preference.new(artist_sort_order: "DESC", song_sort_order: "ASC", allow_create_artists: false, allow_create_songs: true))
  end

end
