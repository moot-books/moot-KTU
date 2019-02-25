# Convert all markdown files to PDF
MD_SOURCES = Rake::FileList.new("**/*.md")
DOT_SOURCES = Rake::FileList.new("**/*.dot")

task :default => :output_pdfs
task :output_pdfs => [MD_SOURCES.ext(".pdf"), :output_dotpngs].flatten
task :output_dotpngs => DOT_SOURCES.ext(".png")

rule ".pdf" => ".md" do |t| 
	sh 'pandoc ' \
		'--variable fontsize=12pt ' \
		'--variable date:"\today" ' \
		'--variable geometry:a4paper ' \
	  '--variable documentclass:book ' \
    '--table-of-contents ' \
    '--number-sections ' \
    '--filter pandoc-fignos ' \
    "-f markdown #{t.source} " \
    "-o #{t.name}"
end

rule ".png" => ".dot" do |t| 
  sh `dot -Tpng #{t.source} -o #{t.name}`
end
