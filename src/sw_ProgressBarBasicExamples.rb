#-------------------------------------------------------------------------------
#
#
#-------------------------------------------------------------------------------

require "extensions.rb"

module SW
module ProgressBarBasicExamples

  path = __FILE__
  path.force_encoding("UTF-8") if path.respond_to?(:force_encoding)

  PLUGIN_ID = File.basename(path, ".rb")
  PLUGIN_DIR = File.join(File.dirname(path), PLUGIN_ID)
  EXTENSION = SketchupExtension.new(
    "SW ProgressBarBasicExamples ",
    File.join(PLUGIN_DIR, "loader")
  )
  EXTENSION.creator     = "S. Williams"
  EXTENSION.description = "A Sketchup ProgressBar Basic Examples"
  EXTENSION.version     = "1.0.0"
  EXTENSION.copyright   = "#{EXTENSION.creator} Copyright (c) 2021"
  Sketchup.register_extension(EXTENSION, true)

end
end

