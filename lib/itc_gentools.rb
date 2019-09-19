# iTC GenTools
# version 0.2.1
# September 19, 2019
# Brian Wood, be.wood@samsung.com
# MIT License

module ItcGentools
  class Error < StandardError; end
  
  # Check for proper number of arguments and provide basic help if incorrect.
  if ARGV.length < 2 || ARGV.length > 3
    puts ""
    puts "The command line for itc-gentool is: itc-gentool <output type> <source file> <output folder (optional)>"
    puts " The commands must be entered in this order"
    puts ""
    puts "The output file(s) will be placed into the output folder if one is specified (it will be created if needed)."
    puts ""
    puts "Output type can be one of the following:"
    puts " html - produces an HTML file from the source file"
    puts " pdf  - produces a PDF file from the source file"
    puts " both - produces both HTML and PDF files from the source file"
    puts ""
    puts " If both is specified, if either output file already exists then the script will abort"
    exit;
  end
  
  output = ARGV[0].downcase
  exists = 0
  direxists = 0
  filename = ARGV[1]
  # set output directory as blank
  outdir = ""
  outcommand = ""
  if ARGV.length == 3
    outdir = ARGV[2]
  end

  iname = filename
  # find home folder for script to locate other required scripts (may not be needed)
  itchome = File.dirname(__FILE__)
  
  if !(File.exist?(filename))
    puts ""
    puts "The source file does not exist. Please check the filename."
  
  else
  
  # Determining if the output type is specified properly and providing help if it is incorrect.
  
    if output != "html" && output != "pdf" && output != "both"
      puts ""
      puts "The output type is not properly specified."
      puts "Output type can be one of the following:"
      puts " html - produces an HTML file from the source file"
      puts " pdf  - produces a PDF file from the source file"
      puts " both - produces both HTML and PDF files from the source file"
    
    else

      # if output directory is set, then set it here
      if ARGV.length == 3
        outdir = ARGV[2]
        if !(Dir.exist?(outdir))
          Dir.mkdir outdir
          direxists = 1
        end
        outcommand = '-D ' + outdir
        outdir = outdir + '/'
      end
    
    # Generating the filenames for each output type (easier to do it all here because of the both scenario 
    # than to do it individually). The "exists" variable is used to exit out if either of the output files
    # already exists so one isn't created and one not (to keep output in sync)
    
      fname = File.basename(filename, ".*" )
      honame = File.dirname(filename) + '/' + outdir + fname + '.html'
      poname = File.dirname(filename) + '/' + outdir + fname + '.pdf'
    
      if (output == "html" || output == "both") && direxists == 0
        puts "Checking if #{honame} exists"
        
        if (File.exist?(honame))
          puts ""
          puts "An HTML output file already exists, please delete or rename it to proceed."
          # this will allow to skip the PDF check if the HTML already exists
          exists = exists + 1
        end
      end
      
      # direxists allows to skip check if folder was just created instead of existing
      if ((output == "pdf" || output == "both") && exists == 0) && direxists == 0
        puts "Checking if #{poname} exists"
        
        if (File.exist?(poname))
          puts""
          puts "A PDF output file already exists, please delete or rename it to proceed."
          exists = exists + 1
        end
      end
      
      # All processing checks also enforce no pre-existing files
      if (output == "html" || output == "both") && exists == 0
        puts ""
        puts "Processing '#{filename}' ..."
        puts "Loading Asciidoctor Diagrams ..."
        puts "Loading Custom Notice blocks ..."
        puts "Preparing HTML Output ..."
      
        system("asciidoctor -r #{itchome}/notice-block.rb -r asciidoctor-diagram -a data-uri -a toc=left #{outcommand} #{filename}")
      end
      
      if (output == "pdf" || output == "both") && exists == 0
        puts ""
        puts "Processing '#{filename}' ..."
        puts "Loading Asciidoctor Diagrams ..."
        puts "Loading Custom Notice blocks ..."
        puts "Preparing PDF Output ..."
      
        system("asciidoctor-pdf -r #{itchome}/notice-block.rb -r asciidoctor-diagram -a pdf-theme=#{itchome}/themes/admonition-theme.yml #{outcommand} #{filename}")
      end
    
    end
  
  end
end
