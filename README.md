# test-class-jenkins Wrapper Cookbook

The simplest possible wrapper cookbook showing how to use the Chef Community Jenkins cookbook as a library cookbook.

## Detail

While the Jenkins library cookbook does not automatically install Java, it provides a simple recipe to install Java for development purposes.  This is included in the default recipe:

    include_recipe 'jenkins::java'
    
Also, default attributes are provided for the `jenkins::master` recipe, again for development purposes.  These are included in default attributes:

    inclue_attribute 'jenkins::master'
    
Then we merely include `jenkins::master` as a base building block for further exploration with Chef and Jenkins.

## Usage

Use `bundle install` to install the required gems.

    bundle install --path vendor/bundle

NOTE: If you are using Xcode 5.1 on a Mac, use the following workaround:

    CONFIGURE_ARGS="--with-ldflags='-Wno-error=unused-command-line-argument-hard-error-in-future'" bundle install --path vendor/bundle

Recent changes made to Xcode 5.1 now return an error when invalid parameters
are passed.  Until the copy of Ruby in the Chef Client package is patched,
you'll need to use the above workaround.

Deploy the cookbook with Test Kitchen using the `kitchen-docker` plugin to follow the exercises in the _Testing Your Automation Code_ class:

    bundle exec kitchen converge

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Mischa Taylor <mischa@misheska.com>
