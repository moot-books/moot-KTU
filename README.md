# Massive Online Open Textboks - KTU
MOOTS are open-source textbooks written by students, verified by the faculty and tailored for the syllabus taught at the university.

## Principles
* Each textbook should be self sufficient for a motivated self learner
* Each textbook should be written in the simplest language possible, with textbook definitions quoted
* Each textbook should match the syllabus taught at the university. 

## Building 
The project converts books written in plain markdown to beautiful books in Latex. The conversion is handled by **Pandoc** and the converted pdf's can be found in the respective folders.

### Ubuntu
Follow these instructions if you're on Ubuntu. If you're on other platforms I'm pretty sure you can figure it out.

Run these commands in order from your terminal.
```
- sudo apt-get update -qq
- sudo apt-get install -y python3-pip 
- sudo apt-get install -y ruby
- gem install rake
- sudo apt-get install -y graphviz
- sudo apt-get install -y texlive-full
- wget https://github.com/jgm/pandoc/releases/download/2.6/pandoc-2.6-1-amd64.deb
- yes | sudo dpkg -i pandoc-2.6-1-amd64.deb
- pip install --user pandoc-fignos
```

From inside the repo then run `rake`. This would build all the pdf's and place it with the markdown files.
