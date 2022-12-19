class MapsController < ApplicationController


    before_action :require_signin, except: [:index, :show]

    def index
      @maps = Map.all
      @map1 = Map.find_by(numb: "1").sold
      @map2 = Map.find_by(numb: "2").sold
      @map3 = Map.find_by(numb: "3").sold
      @map4 = Map.find_by(numb: "4").sold
      @map5 = Map.find_by(numb: "5").sold
      @map6 = Map.find_by(numb: "6").sold
      @map7 = Map.find_by(numb: "7").sold
      @map8 = Map.find_by(numb: "8").sold
      @map9 = Map.find_by(numb: "9").sold
      @map12 = Map.find_by(numb: "12").sold
      @map13 = Map.find_by(numb: "13").sold
      @map15 = Map.find_by(numb: "15").sold
      @map16 = Map.find_by(numb: "16").sold
      @map17 = Map.find_by(numb: "17").sold
      @map18 = Map.find_by(numb: "18").sold
      @map19 = Map.find_by(numb: "19").sold
      @map20 = Map.find_by(numb: "20").sold
      @map21 = Map.find_by(numb: "21").sold
      @map22 = Map.find_by(numb: "22").sold
      @map23 = Map.find_by(numb: "23").sold
      @map24 = Map.find_by(numb: "24").sold
      @map25 = Map.find_by(numb: "25").sold
      @map26 = Map.find_by(numb: "26").sold
      @map27 = Map.find_by(numb: "27").sold
      @map28 = Map.find_by(numb: "28").sold
      @map29 = Map.find_by(numb: "29").sold
      @map30 = Map.find_by(numb: "30").sold
      @map31 = Map.find_by(numb: "31").sold
      @map32 = Map.find_by(numb: "32").sold
      @map33 = Map.find_by(numb: "33").sold
      @map38 = Map.find_by(numb: "38").sold
      @map39 = Map.find_by(numb: "39").sold
      @map40 = Map.find_by(numb: "40").sold
      @map41 = Map.find_by(numb: "41").sold
      @map43 = Map.find_by(numb: "43").sold
      @map44 = Map.find_by(numb: "44").sold
      @map45 = Map.find_by(numb: "45").sold
      @map46 = Map.find_by(numb: "46").sold
      @map47 = Map.find_by(numb: "47").sold
      @map48 = Map.find_by(numb: "48").sold
      @map50 = Map.find_by(numb: "50").sold
      @map51 = Map.find_by(numb: "51").sold
      @map52 = Map.find_by(numb: "52").sold
    end
  
    def geo
      @maps = Map.all
      @map1 = Map.find_by(numb: "1").sold
      @map2 = Map.find_by(numb: "2").sold
      @map3 = Map.find_by(numb: "3").sold
      @map4 = Map.find_by(numb: "4").sold
      @map5 = Map.find_by(numb: "5").sold
      @map6 = Map.find_by(numb: "6").sold
      @map7 = Map.find_by(numb: "7").sold
      @map8 = Map.find_by(numb: "8").sold
      @map9 = Map.find_by(numb: "9").sold
      @map12 = Map.find_by(numb: "12").sold
      @map13 = Map.find_by(numb: "13").sold
      @map15 = Map.find_by(numb: "15").sold
      @map16 = Map.find_by(numb: "16").sold
      @map17 = Map.find_by(numb: "17").sold
      @map18 = Map.find_by(numb: "18").sold
      @map19 = Map.find_by(numb: "19").sold
      @map20 = Map.find_by(numb: "20").sold
      @map21 = Map.find_by(numb: "21").sold
      @map22 = Map.find_by(numb: "22").sold
      @map23 = Map.find_by(numb: "23").sold
      @map24 = Map.find_by(numb: "24").sold
      @map25 = Map.find_by(numb: "25").sold
      @map26 = Map.find_by(numb: "26").sold
      @map27 = Map.find_by(numb: "27").sold
      @map28 = Map.find_by(numb: "28").sold
      @map29 = Map.find_by(numb: "29").sold
      @map30 = Map.find_by(numb: "30").sold
      @map31 = Map.find_by(numb: "31").sold
      @map32 = Map.find_by(numb: "32").sold
      @map33 = Map.find_by(numb: "33").sold
      @map38 = Map.find_by(numb: "38").sold
      @map39 = Map.find_by(numb: "39").sold
      @map40 = Map.find_by(numb: "40").sold
      @map41 = Map.find_by(numb: "41").sold
      @map43 = Map.find_by(numb: "43").sold
      @map44 = Map.find_by(numb: "44").sold
      @map45 = Map.find_by(numb: "45").sold
      @map46 = Map.find_by(numb: "46").sold
      @map47 = Map.find_by(numb: "47").sold
      @map48 = Map.find_by(numb: "48").sold
      @map50 = Map.find_by(numb: "50").sold
      @map51 = Map.find_by(numb: "51").sold
      @map52 = Map.find_by(numb: "52").sold
    end

    def edit
      @map = Map.find(params[:id])
    end
  
    def update
      @map = Map.find(params[:id])
      if @map.update(map_params)
        redirect_to maps_path, notice: "წარმატებით შეიცვალა"
      else
        render :edit, status: :unprocessable_entity
      end
    end
 
  private
  
    def map_params
      params.require(:map).
        permit(:numb, :sold)
    end

end
