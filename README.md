This Rails application follows the Blog Post Series on carnal0wnage.attackresearch.com entitled "Basics of Rails". 

To get this going, have RVM installed.

    git clone git@github.com:cktricky/attackresearch.git
    cd attackresearch
    bundle install # <~ after accepting the .rvmrc file, of course
    rake db:create
    rake db:migrate
    rake unicorn:start[4444]
