require File.join(SW::ProgressBarBasicExamples::PLUGIN_DIR, 'progress_bar_basic_example1.rb')
require File.join(SW::ProgressBarBasicExamples::PLUGIN_DIR, 'progress_bar_basic_example2.rb')
require File.join(SW::ProgressBarBasicExamples::PLUGIN_DIR, 'progress_bar_basic_example3.rb')
require File.join(SW::ProgressBarBasicExamples::PLUGIN_DIR, 'progress_bar_basic_example4.rb')
require File.join(SW::ProgressBarBasicExamples::PLUGIN_DIR, 'progress_bar_basic_example_tool.rb')


module SW
  module ProgressBarBasicExamples
    def self.load_menus()
          
      # Load Menu Items  
      if !@loaded
        toolbar = UI::Toolbar.new "SW ProgressBarBasicExamples"
        
        cmd = UI::Command.new("Progress1") {SW::ProgressBarBasicExamples.demo1}
        cmd.large_icon = cmd.small_icon =  File.join(SW::ProgressBarBasicExamples::PLUGIN_DIR, "icons/example1.png")
        cmd.tooltip = "ProgressBarBasic"
        cmd.status_bar_text = "code &block Example"
        toolbar = toolbar.add_item cmd
       
        cmd = UI::Command.new("Progress2") {SW::ProgressBarBasicExamples.demo2}
        cmd.large_icon = cmd.small_icon =  File.join(SW::ProgressBarBasicExamples::PLUGIN_DIR, "icons/example2.png")
        cmd.tooltip = "ProgressBarBasic"
        cmd.status_bar_text = "no code &block example"
        toolbar = toolbar.add_item cmd

        cmd = UI::Command.new("Progress3") {SW::ProgressBarBasicExamples.demo3}
        cmd.large_icon = cmd.small_icon =  File.join(SW::ProgressBarBasicExamples::PLUGIN_DIR, "icons/example3.png")
        cmd.tooltip = "ProgressBarBasic"
        cmd.status_bar_text = "double bar example"
        toolbar = toolbar.add_item cmd
       
        cmd = UI::Command.new("Progress4") {SW::ProgressBarBasicExamples.demo4}
        cmd.large_icon = cmd.small_icon =  File.join(SW::ProgressBarBasicExamples::PLUGIN_DIR, "icons/example4.png")
        cmd.tooltip = "ProgressBarBasic"
        cmd.status_bar_text = "seperate bars example"
        toolbar = toolbar.add_item cmd
       
        cmd = UI::Command.new("Progress4") {SW::ProgressBarBasicExampleTool.start}
        cmd.large_icon = cmd.small_icon =  File.join(SW::ProgressBarBasicExamples::PLUGIN_DIR, "icons/example5.png")
        cmd.tooltip = "ProgressBarBasic"
        cmd.status_bar_text = "line tool example"
        toolbar = toolbar.add_item cmd
       
        toolbar.show
      @loaded = true
      end
    end
    load_menus()
  end
  
end


