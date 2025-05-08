## Requirements
- ruby 3.4.2

## Operation Check
1. Install dependencies
    ```bash
    bundle install
    ```
1. Run Rspec tests
    ```bash
    bundle exec rspec spec/models/comment_spec.rb
    ```
This verifies that the CallbackObject is correctly accepted in Rails.

1. Perform type checking
    ```bash
    bundle exec steep check
    ```
This checks for any type errors introduced by the changes.