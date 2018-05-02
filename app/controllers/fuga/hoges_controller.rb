class Fuga::HogesController < InheritedResources::Base

  private

    def hoge_params
      params.require(:hoge).permit()
    end
end

