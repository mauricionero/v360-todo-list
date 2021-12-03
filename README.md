# v360-todo-list

# 📅 A TODO list challenge for the company V360

This is a simple TODO list follwing the conventions of Ruby on Rails


## 🎬 Getting Started

✅**Ruby** and ✅**Bundler** is expected to be installed on your system.

### 🔌 Built With
* [Ruby](https://www.ruby-lang.org/en) 2.6.5p114
* [Bundler](http://bundler.io) 2.1.4
* [Rails](https://rubyonrails.org/) 6.1.4

### 💎 Gems used:
* **rubocop** to improve code quality
* **rspec** for testing
* **simple_calendar** to make it easy to manipulate and render a calendar
* **pry** to debug

### 📦 Javascript lib:
* **Prototype** 1.7


## ☑️ Installing

After copying the files, change into the newly created directory and run:

```
bundle install
rake db:migrate
```

This will install all dependencies needed for the project.


## 🧪 Running the Tests

First its necessary to prepare the environment for the test running the command:
```
rake db:test:prepare
```

And then its ready to run the test with:
```
rspec
```

If for any reason that rspec command doesn't work, try the following command:
```
bundle exec rspec
```


## $: Running the Application

To run the application execute:
```
rails s
```

That should be already be accessible at the browser at [localhost:3000](http://localhost:3000/)


## 📋 Improvements to the future

* As this project is just a simple calendar, it was made with a simple view and a simple Prototype library. In the case of an improvement, with more time the front-end could be done using a more modern framework, like React.
* It could have a list of reminders in order at the right side of the screen to list the next reminders.
* It could send an email or a notification in browser to alert with a configurable time before the reminder.
* Prettier interface?

----
O desafio consiste em:

Entender o seu método de desenvolvimento, organização de código e conhecimento da linguagem.

O desafio é fazer um TO DO List, onde esse tem que ter no mínimo:

1) Poder criar várias listas de TODO
2) Cada lista tem que poder ser adicionado vários itens

Qualquer funcionalidade a mais que isso é bem vinda e vai ajudar a gente no entendimento do seu conhecimento do Framework Rails.

----

Além da parte técnica,

Gostaríamos de avaliar a sua organização, então se puder quebrar o desenvolvimento em atividades e organizar essas atividades no Github, ajudaria nessa avaliação.

Uma dica, o Github possui o "projects" que é uma cópia do Trello.

Quando tiver uma previsão de conclusão, poderia nos avisar aqui pela Revelo, por favor? Daí agendamos um encontro para falar sobre o desafio e já fazer uma possível proposta para trabalhar conosco.
