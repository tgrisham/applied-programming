require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  



get "/" do
   #"<h1>Dice: #{die1},#{die2}</h1>"
   @die1 = rand(1..6)
   @die2 = rand(1..6)
   @die3 = rand(1..6)
   @die4 = rand(1..6)
   @die5 = rand(1..6)
   @dice = []
   
   for die in(0..4)
    die = rand(1..6)
    @dice << die 
   end

view "dice"
end

get "/tacos" do
  "tacos are good"
end