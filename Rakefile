#
# Rake build file for building PDF books from markdown files 
# Running rake
# * Builds png from dot files
# * Builds pdf from md files
# * Copies the pdf files to the BOOKS folder with same structure

require 'rake/clean'

MD_SOURCES = Rake::FileList.new("**/*.md")
MD_SOURCES.exclude("README.md")
DOT_SOURCES = Rake::FileList.new("**/*.dot")

task :default => [:output_pdfs, :index_html]
task :output_pdfs => [:output_dotpngs, :pdfs].flatten
task :pdfs => MD_SOURCES.pathmap("BOOKS/%X.pdf")
task :output_dotpngs => DOT_SOURCES.ext(".png")

directory "BOOKS"

# Create an Index file for surge to display
task :index_html => "BOOKS/index.html"
file "BOOKS/index.html" do
  Dir.chdir("BOOKS") do
    sh 'tree -H . > index.html'
  end
end

rule ".pdf" => [->(f){source_for_pdf(f)}, "BOOKS"] do |t|
  mkdir_p t.name.pathmap("%d")
  Dir.chdir(t.source.pathmap("%d")) do
    sh 'pandoc ' \
      '--variable fontsize=12pt ' \
      '--variable date:"\today" ' \
      '--variable geometry:a4paper ' \
      '--variable documentclass:book ' \
      '--table-of-contents ' \
      '--number-sections ' \
      '--filter pandoc-fignos ' \
      "-f markdown #{t.source.pathmap('%f')} " \
      "-o #{t.name.pathmap('%f')}"
  end
  FileUtils.mv(t.source.ext('.pdf'),t.name)
end
CLOBBER.include('BOOKS')

rule ".png" => ".dot" do |t| 
  sh "dot -Tpng #{t.source} -o #{t.name}"
end
CLOBBER.include(DOT_SOURCES.ext(".png"))

def source_for_pdf(pdf_file)
  MD_SOURCES.detect { |f|
    f.ext('') == pdf_file.pathmap("%{^BOOKS/}X")
  }
end

CLEAN.include(Rake::FileList.new('tex2pdf.*'))
