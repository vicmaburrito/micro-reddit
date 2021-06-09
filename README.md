## About

> In this project, we build the models for a Reddit look-alike application with all the migrations needed. with three tables, user, comment, and post we got the job done by creating associations between those tables. 

- user table store user info.
- post table store post info, with user & comments id.
- comment table store comments info, with user & post id.

## Usage 

- Clone the repo: $ git clone
- Run `bundle install`  in your terminal to install the Ruby gems.
- Run `rails db:migrate`  in your terminal to create the databases.
- Type `rails console` to enter the rails terminal.
- Now you are ready to add users as you please:
    - Users are created by running `u = User.new(username: "name", email: "foo@bar.com", age: num)`. 
    - Run `u.save` to sve the user into the database.
    - You can replace the #new method with #create and the same inputs.
    - Note that the username has to be shorter than 12 characters, the email has to contain '@' and the age must be greater than or equal to 13.
    - Saved users can be found and instanciated by running `User.find(index)`
- Having created and saved an user, now you can create your posts for any user
    - Run `post = User.find(user_index).posts.build(:title => "title", :body => "body")` to create a post.
    - Then run `post.save` to save to the database. 
    - `post = Post.create(title: "title", body: "body", user_id: num)` can be used, but is prone to errors if the given index doesn't coincide with a user, so we do not recommend it.
    - The title is limited to 30 characters, and the body, to 100 characters.
- Finally, with these two elements created, you can create comments:
    - Run `comment = Comment.create(body: "body", user_id: "num", post_id: "num")`
    - For now, this flawed method is the only way to pass two foreign keys at the same time (both IDs), since `user.build` and `post.build` would only pass their own ID to the builder.
    - Double-check for IDs in order to avoid missed creations and orphan comments.
- When you are done, you can use `quit` to exit the rails console.

## BUILT WITH

- Ruby
- ROR 
- SQLite3

## AUTHORS

👤 **Manuel Aldaraca**

- GitHub: [@vicmaburrito](https://github.com/vicmaburrito)
- Twitter: [@ManuelAldaraca](https://twitter.com/ManuelAldaraca)
- LinkedIn: [Manuel Aldaraca](https://www.linkedin.com/in/manuel-aldaraca/)

👤 **Julian Carracedo**

- GitHub: [@JuliCarracedo](https://github.com/JuliCarracedo)
- Twitter: [@CarracedoTrigo](https://www.twitter.com/CarracedoTrigo)
- LinkedIn: [Julian Carracedo](https://www.linkedin.com/in/julian-carracedo/)

## SHOW YOUR SUPPORT
Give a ⭐️ if you like the project

## 🤝 CONTRIBUTING
- Contributions, issues, and feature requests are welcome!
Feel free to check the issues page. Show your support
Give a ⭐️ if you like this project!

## ACKNOWLEDGMENTS

- Micro-Reddit Project by Microverse.

## 📝 License MIT
- This project is [MIT](./LICENSE) licensed.