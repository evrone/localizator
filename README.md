# PLEASE NOTE, THIS PROJECT IS NO LONGER BEING MAINTAINED
# Localizator

This plugin provides two simple rake tasks to help keeping tranlations in
sync with the default locale.

<a href="https://evrone.com/?utm_source=github.com">
  <img src="https://evrone.com/logo/evrone-sponsored-logo.png"
       alt="Sponsored by Evrone" width="231">
</a>

## Getting Started
### Installation

Add this line to your application's Gemfile:

    gem 'localizator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install localizator

### Usage

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

Please read [Code of Conduct](CODE-OF-CONDUCT.md) and [Contributing Guidelines](CONTRIBUTING.md) for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, 
see the [tags on this repository](https://github.com/evrone/localizator/tags). 

## Authors

* [Andrey Morskov](https://github.com/accessd) - *Initial work*

See also the list of [contributors](https://github.com/evrone/localizator/contributors) who participated in this project.

## License

This project is licensed under the [MIT License](LICENSE).
