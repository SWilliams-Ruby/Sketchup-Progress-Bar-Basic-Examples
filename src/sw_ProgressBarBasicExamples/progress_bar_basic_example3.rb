
module SW
  module ProgressBarBasicExamples
    def self.demo3()
      begin
        model = Sketchup.active_model.start_operation('Progress Bar Example', true)

        SW::ProgressBarBasicDoubleBar.new {|pbar|
          (1..5).each {|i|
            pbar.set_value(i * 20)
            pbar.label = "Executing Step: #{i}"
            pbar.refresh

            # create an array of random points 
            points =  []
            500.times{points << [rand(100),rand(100),rand(100)]}

            # Add cubes to the model, keeping the progress bar updated
            points.each_with_index {|point, index|
              make_cube(point)
              if pbar.update?
                pbar.label2 = "Remaining: #{points.size - index}"
                pbar.set_value2( 100 * index / points.size)
                pbar.refresh
              end
            }
          } # (1..5).each
        }  
        Sketchup.active_model.commit_operation

      rescue => exception
        Sketchup.active_model.abort_operation
        raise exception
      end
    end
        # add a cube to the model  
    def self.make_cube(point)
      ents = Sketchup.active_model.entities
      grp = ents.add_group
      face = grp.entities.add_face [0,0,0],[2,0,0],[2,2,0],[0,2,0]
      face.pushpull(2)
      grp.material = "red"
      tr = Geom::Transformation.new(point)
      grp.transform!(tr)
    end
    

    

  end
end
nil

