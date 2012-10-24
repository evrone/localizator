# Localizator

This plugin provides two simple rake tasks to help keeping tranlations in
sync with the default locale.

## Installation

Add this line to your application's Gemfile:

    gem 'localizator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install localizator

## Usage

Start creating a new locale with:

    rake localizator:update[nl]

It will generate a new file in 'config/locales/nl-missing.yml' with the
keys in your default locale which need to be translated.

Open this file in your favourite text editor and translate it!

Once done you can merge the translatios into your main locale file 
('config/locales/nl.yml') with:

    rake localizator:merge[nl]

Since this is the first run, this will simply copy your translations to
the main locale file.

Now, every time you edit your main locale file you can run the samle update
task with:

    rake localizator:update[nl]

Then translate the missing keys in your 'config/locales/nl-missing.yml'
file and merge them back into the main locale file.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
