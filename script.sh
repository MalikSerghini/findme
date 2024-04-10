#!/bin/bash

printf "   __ _           _                \n"
printf "  / _(_)         | |               \n"
printf " | |_ _ _ __   __| |_ __ ___   ___ \n"
printf " |  _| | '_ \ / _\` | '_ \` _ \ / _ \ \n"
printf " | | | | | | | (_| | | | | | |  __/ \n"
printf " |_| |_|_| |_|\__,_|_| |_| |_|\___| \n"
printf "\e[1;92mversion: 1.0, Author: @MalikSerghini\n\n"

printf "\e[1;93mUsername: \e[0m"

read username
DATE=$(date +'%d_%m_%Y');
FILENAME="$DATE"_"$username".txt

function checkError(){
    curl -s "$1" --header "Accept-Language: en" -L | grep -oi "$2"; echo $?
}

function checkSuccess(){
    curl -s "$1" --header "Accept-Language: en" -L | grep -o "$2"; echo $?
}

# YOUTUBE
# INSTAGRAM
# REDDIT
# GITHUB
# Spotify
# Ebay
# STEAM
# PINTEREST
# TUMBLR
# Dribbble
# WORDPRESS
# BitBucket
# BuZZFEED
# FLICKR
# VIMEO
# DISQUS
# DEVIANART
# ABOUT.ME
# MIXCLOUD
# PATREON

# YOUTUBE
if [[ $(checkError "https://www.youtube.com/$username" "Not Found") == *'0'* ]] 
then

    printf "\e[1;92m [-] Youtube:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] Youtube:"
    printf "\e[1;92m Found!\e[0m https://www.youtube.com/%s\n" $username
    printf "https://www.youtube.com/%s\n" $username >> $FILENAME

fi

# INSTAGRAM
if [[ $(checkSuccess "https://www.instagram.com/$username" "Follow") == *'1'* ]] 
then

    printf "\e[1;92m [-] Instagram:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] Instagram:"
    printf "\e[1;92m Found!\e[0m https://www.instagram.com/%s\n" $username
    printf "https://www.instagram.com/%s\n" $username >> $FILENAME

fi

# FACEBOOK
if [[ $(checkSuccess "https://www.facebook.com/$username" 'href="https://m.facebook.com/') == *'1'* ]] 
then

    printf "\e[1;92m [-] Facebook:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] Facebook:"
    printf "\e[1;92m Found!\e[0m https://www.facebook.com/%s\n" $username
    printf "https://www.facebook.com/%s\n" $username >> $FILENAME

fi

# REDDIT
if [[ $(checkError "https://www.reddit.com/user/$username" "Sorry, nobody on Reddit goes by that name") == *'0'* ]] 
then

    printf "\e[1;92m [-] Reddit:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] Reddit:"
    printf "\e[1;92m Found!\e[0m https://www.reddit.com/user/%s\n" $username
    printf "https://www.reddit.com/user/%s\n" $username >> $FILENAME

fi


## GITHUB
if [[ $(checkError "https://github.com/$username" "Not Found") == *'0'* ]] 
then

    printf "\e[1;92m [-] GitHub:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] GitHub:"
    printf "\e[1;92m Found!\e[0m https://github.com/%s\n" $username
    printf "https://github.com/%s\n" $username >> $FILENAME

fi

# SPOTIFY
if [[ $(checkError "https://open.spotify.com/user/$username" "Page not found") == *'0'* ]] 
then

    printf "\e[1;92m [-] Spotify:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] Spotify:"
    printf "\e[1;92m Found!\e[0m https://open.spotify.com/%s\n" $username
    printf "https://open.spotify.com/%s\n" $username >> $FILENAME

fi

# EBAY
if [[ $(checkError "https://www.ebay.com/usr/$username" "Sorry, this user was not found") == *'0'* ]] 
then

    printf "\e[1;92m [-] Ebay:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] Ebay:"
    printf "\e[1;92m Found!\e[0m https://www.ebay.com/usr/%s\n" $username
    printf "https://www.ebay.com/usr/%s\n" $username >> $FILENAME

fi

# STEAM
if [[ $(checkError "https://steamcommunity.com/id/$username" "not be found") == *'0'* ]] 
then

    printf "\e[1;92m [-] Steam:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] Steam:"
    printf "\e[1;92m Found!\e[0m https://steamcommunity.com/id/%s\n" $username
    printf "https://steamcommunity.com/id/%s\n" $username >> $FILENAME

fi

# PINTEREST
if [[ $(checkError "https://www.pinterest.com/$username" "not found") == *'0'* ]] 
then

    printf "\e[1;92m [-] Pinterest:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] Pinterest:"
    printf "\e[1;92m Found!\e[0m https://www.pinterest.com/%s\n" $username
    printf "https://www.pinterest.com/%s\n" $username >> $FILENAME

fi

# TUMBLR
if [[ $(checkError "https://www.tumblr.com/$username" "nothing here") == *'0'* ]] 
then

    printf "\e[1;92m [-] Tumblr:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] Tumblr:"
    printf "\e[1;92m Found!\e[0m https://www.tumblr.com/%s\n" $username
    printf "https://www.tumblr.com/%s\n" $username >> $FILENAME

fi

# DRIBBBLE
if [[ $(checkError "https://dribbble.com/$username" "that page is gone") == *'0'* ]] 
then

    printf "\e[1;92m [-] Dribbble:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] Dribbble:"
    printf "\e[1;92m Found!\e[0m https://dribbble.com/%s\n" $username
    printf "https://dribbble.com/%s\n" $username >> $FILENAME

fi

# WORDPRESS
if [[ $(checkError "https://$username.wordpress.com" "do you want to register") == *'0'* ]] 
then

    printf "\e[1;92m [-] WordPress:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] WordPress:"
    printf "\e[1;92m Found!\e[0m https://$username.wordpress.com%s\n"
    printf "https://$username.wordpress.com%s\n" >> $FILENAME

fi

# BITBUCKET
if [[ $(checkError "https://bitbucket.org/$username" "Resource not found") == *'0'* ]] 
then

    printf "\e[1;92m [-] Bitbucket:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] Bitbucket:"
    printf "\e[1;92m Found!\e[0m https://bitbucket.org/$username%s\n"
    printf "https://bitbucket.org/$username%s\n" >> $FILENAME

fi

# BuzzFeed 
if [[ $(checkError "https://buzzfeed.com/$username" "We can't find the page you're looking for.") == *'0'* ]] 
then

    printf "\e[1;92m [-] BuzzFeed:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] BuzzFeed:"
    printf "\e[1;92m Found!\e[0m https://buzzfeed.com/$username%s\n"
    printf "https://buzzfeed.com/$username%s\n" >> $FILENAME

fi

# flickr 
if [[ $(checkError "https://www.flickr.com/people/$username" "This is not the page you’re looking for") == *'0'* ]] 
then

    printf "\e[1;92m [-] flickr:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] flickr:"
    printf "\e[1;92m Found!\e[0m https://www.flickr.com/people/$username%s\n"
    printf "https://www.flickr.com/people/$username%s\n" >> $FILENAME

fi

# vimeo 
if [[ $(checkError "https://vimeo.com/$username" "Make sure you’ve typed the URL correctly") == *'0'* ]] 
then

    printf "\e[1;92m [-] vimeo:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] vimeo:"
    printf "\e[1;92m Found!\e[0m https://vimeo.com/$username%s\n"
    printf "https://vimeo.com/$username%s\n" >> $FILENAME

fi

# DISQUS 
if [[ $(checkError "https://disqus.com/$username" "oops! this page could not be found") == *'0'* ]] 
then

    printf "\e[1;92m [-] disqus:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] disqus:"
    printf "\e[1;92m Found!\e[0m https://disqus.com/$username%s\n"
    printf "https://disqus.com/$username%s\n" >> $FILENAME

fi

# DEVIANTART 
if [[ $(checkError "https://www.deviantart.com/$username" "llama not found") == *'0'* ]] 
then

    printf "\e[1;92m [-] DevientArt:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] DevientArt:"
    printf "\e[1;92m Found!\e[0m https://www.deviantart.com/$username%s\n"
    printf "https://www.deviantart.com/$username%s\n" >> $FILENAME

fi

# ABOUTME 
if [[ $(checkError "https://about.me/$username" "create a page to present who you are") == *'0'* ]] 
then

    printf "\e[1;92m [-] About.Me:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] About.Me:"
    printf "\e[1;92m Found!\e[0m https://about.me/$username%s\n"
    printf "https://about.me/$username%s\n" >> $FILENAME

fi

# MIXCLOUD 
if [[ $(checkError "https://www.mixcloud.com/$username" "page not found") == *'0'* ]] 
then

    printf "\e[1;92m [-] MIXCLOUD:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] MIXCLOUD:"
    printf "\e[1;92m Found!\e[0m https://www.mixcloud.com/$username%s\n"
    printf "https://www.mixcloud.com/$username%s\n" >> $FILENAME

fi

# PATREON 
if [[ $(checkError "https://www.patreon.com/$username" "404") == *'0'* ]] 
then

    printf "\e[1;92m [-] PATREON:"
    printf "\e[1;93m Not Found!\e[0m\n"

else 
    printf "\e[1;92m [+] PATREON:"
    printf "\e[1;92m Found!\e[0m https://www.patreon.com/$username%s\n"
    printf "https://www.patreon.com/$username%s\n" >> $FILENAME

fi