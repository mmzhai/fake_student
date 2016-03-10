# Fake_Students
This gem provides a fake Student DB which is simple version of students info on Salesforce. Since the Legacy CtMail project already has working version of high-school filter, this fake DB contains college students only.

##1. Installation
First you need to add this gem to your gemfile under **development** and **test** group:
```ruby
group :development, :test do
  gem 'fake_student', git: 'git://github.com/hchang239/fake_student.git'
  ...
end
```
Then don't forget to run `bundle install`

Now you should copy the migration file by running:
```ruby
rails g fake_student:install
```
This will ask if you want to run migration. Please enter 'y' or 'Y' to allow auto-migration.

##2. Seed Student Records
For your convenience, I also create a rake command to seed dummy students.<br>
If you want to use it please run:
```ruby
rake fake_student:load
```
> Note: This will seed 200 student records.

##3. Usage
The simpliest way of inspecting fake DB is using `rails console`. Once you are on console mode, you just need to call:
```shell
2.2.0 :001> Fake::Student
```
As you notice, this gem provides a model called `Student` under `Fake` module. Since it inherits `ActiveRecord::Base`, which is the base class for rails-generated model, you can use any methods that you've learned from CS169.<br>
For example, to retreive all female students:
```shell
2.2.0 :002> Fake::Student.where(gender: 'female')
```