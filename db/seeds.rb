Application.destroy_all
Application.reset_pk_sequence
Communication.destroy_all
Communication.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence
require 'date'



puts "🌱 Seeding spices..."

# datetime = DateTime.new(2001,2,3)

User.add_user(username: 'kenny', password: 'password')
User.add_user(username: 'saim', password: 'password')
User.add_user(username: 'robin', password: 'password')
user1 = User.first 
User.all.each do |user|
  user.logout
end

# Seed your database here
app1 = Application.create(company: "Facebook", position: "Software Engineer 2", status: "pending", user_id: user1.id, favorite: false, logo_url: "https://static.dezeen.com/uploads/2021/11/meta-facebook-rebranding-name-news_dezeen_2364_col_sq-213x213.jpg")
app2 = Application.create(company: "IBM", position: "Associate Software Engineer", status: "offer made", user_id: user1.id, favorite: false, logo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZlxf_-ydMMfjIV_gDe0-mkbOwmS9W8FWMxx5n76I6lNd_fh_F7dGWFPxihZYbZGYFSLI&usqp=CAU")
app3 = Application.create(company: "Amazon", position: "Software Engineer", status: "rejected", user_id: user1.id, favorite: false, logo_url: "https://www.freeiconspng.com/uploads/amazon-icon-6.png")
app4 = Application.create(company: "Microsoft", position: "Software Engineer", status: "interviewing", user_id: user1.id, favorite: false, logo_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/326fe159-1650-46ba-96c8-fa0267e7ce92/d4on7uq-3c21f4e8-8dd0-42eb-9d66-e2f9bdecc406.png/v1/fill/w_305,h_304,strp/windows_8_square_logo_by_darkmaster79_d4on7uq-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MzA0IiwicGF0aCI6IlwvZlwvMzI2ZmUxNTktMTY1MC00NmJhLTk2YzgtZmEwMjY3ZTdjZTkyXC9kNG9uN3VxLTNjMjFmNGU4LThkZDAtNDJlYi05ZDY2LWUyZjliZGVjYzQwNi5wbmciLCJ3aWR0aCI6Ijw9MzA1In1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.eyO-0Ym2-UDdBHPKWziQKK8eDFTVlMtm1ZSHCTHUlEo")
app5 = Application.create(company: "Oracle", position: "Software Engineer I", status: "offer made", user_id: user1.id, favorite: false, logo_url: "https://sybyl.com/wp-content/uploads/2019/11/Oracle-Logo-For-Website.png")

app6 = Application.create(company: "Uber", position: "Full Stack Developer", status: "rejected", user_id: user1.id, favorite: false, logo_url: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAbFBMVEUAAAD////4+Ph9fX29vb12dnb7+/uZmZmOjo6tra1oaGhCQkLs7Oyfn5/X19daWlqnp6fi4uJhYWE7OzsLCwsiIiLDw8OUlJTKysrx8fFUVFQaGhpHR0crKyswMDC0tLRwcHDT09OGhoZ8fHwvfKnAAAADDUlEQVR4nO3ZfVeyMBjHcZAUMUzRfKAsy97/e7zLDdzDNQxZp859vp8/r7ON/UC3oUkCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOj0lo6+uOVNejYza9t6ZCsftru1P2QxSmV7o1FeOoPV1X458wcbbqou7pbv/YSFPO3qyem6CuRL09Wl0SLQ5PibCe9CE5/aXbNQu9poNA7ehvs/mNB8Nl0J828lTJ9/O+Gk1c6pkhJOXNY1OhLuk7j6JnwXOqcbs5jJI9pUQmuBWy9/5iH2Tfgg9X4za7cmbB/sqc/8rxuWMBHmdHvCRG0zkdfTKAkzszQg4fu5uu0z/+uiJFyYpQEJ9+dq5KVmWMK10Pv/eobSTR+QsD5Xiz7zv65vwmo2buWlamVtFk3CfG7K7OHlhPoo9xEpmhbhTLOwu4pnmp0zvpSw6RgpWWN4QudYKid0x9dbX3nRvpDc/bmE6ch+u5ASerMOn9omkQNGOXnb7wNSwsO3E45efj3hKJ8ttFW2VbVSSrifZg3/zTaQcDKPnS+Y8BBM+Gi1W/ntdEJ39bQZCY33lKqzz40Cu5eeublMimea5OFcNY+SPfbDtGy+wpl/p2LRUdw3a/1oX42SnLDwqn0SXsZXW2vd0eVWz+pS7pK/96cpJ1x6X8Q+CS8FfafzcJeb1d4UPz2mfpyuZzg8of64O1/zKI5qZHsR05ezTiJywmrQp9So6EN85GP3l1c1snnefdQB7VmKCXeq4a0rjT++v3UO1+7kx/Fh8/zydNo2hVxoV5on6qM+elu/tumEy8JjfCSEhPqb8RM7RjNNl/O4Os401qyCvyaad0xIqBetKxvpberr0+5OaJ20wgmNRlLCZCIV45Amv/xOo7P61WoXTGguImLCkypGfgNW1u70jxuvTS7Pu3J//FuHEpqvIB/i49IfJuHfnhhW821Vqj+UcvfPFmWcu3anhdBufZpKrFf3zfyrv3vOPhTLT4V8eQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABA6x86sx9q7Il/JAAAAABJRU5ErkJggg==")

app7 = Application.create(company: "Lyft", position: "Backend Software Engineer", status: "wishlist", user_id: user1.id, favorite: false, logo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Lyft_logo.svg/1200px-Lyft_logo.svg.png")

# app8 = Application.create(company: "Apple", position: "Frontend Developer", status: "rejected", user_id: user1.id, favorite: false, logo_url: "https://lh3.googleusercontent.com/proxy/q3RRy8A_B8Ip0TKAfnNsdC8lUpAnFjds-OnmUdzgIbTFfkx6EBoAGVPxUB64KdlnLPgUPJYl9XLC6Sy_Nfkt-oX9ySiKUnOZ9x5nDrozebIQEHtREq5wnw")

app9 = Application.create(company: "Twitter", position: "React JS Developer", status: "interviewing", user_id: user1.id, favorite: false, logo_url: "https://logos-world.net/wp-content/uploads/2020/04/Twitter-Logo.png")

app10 = Application.create(company: "Netflix", position: "Software Engineer", status: "pending", user_id: user1.id, favorite: false, logo_url: "https://www.thewrap.com/wp-content/uploads/2021/07/Netflix-Logo-936x527.jpg")

app11 = Application.create(company: "Saleforce", position: "Associate Software Engineer", status: "pending", user_id: user1.id, favorite: false, logo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/Salesforce.com_logo.svg/1200px-Salesforce.com_logo.svg.png")


Communication.create(time: DateTime.new(2021, 11, 10), received: false, comment: "have not heard back", application_id: app1.id)
Communication.create(time: DateTime.new(2021, 11, 18), received: true, comment: "offer received", application_id: app2.id)
Communication.create(time: DateTime.new(2021, 11, 12), received: true, comment: "rejected", application_id: app3.id)
Communication.create(time: DateTime.new(2021, 11, 11), received: false, comment: "Application submitted", application_id: app4.id)
Communication.create(time: DateTime.new(2021, 11, 12), received: true, comment: "Interview request received", application_id: app4.id)
Communication.create(time: DateTime.new(2021, 11, 12), received: false, comment: "Interview date confirmed", application_id: app4.id)
Communication.create(time: DateTime.new(2021, 11, 17), received: true, comment: "offer received", application_id: app5.id)
Communication.create(time: DateTime.new(2021, 11, 7), received: true, comment: "rejected", application_id: app6.id)
# Communication.create(time: DateTime.new(2021, 11, 10), received: true, comment: "rejected", application_id: app8.id)
Communication.create(time: DateTime.new(2021, 11, 3), received: true, comment: "Interview request received", application_id: app9.id)
Communication.create(time: DateTime.new(2021, 11, 5), received: false, comment: "have not heard back", application_id: app10.id)
Communication.create(time: DateTime.new(2021, 11, 7), received: false, comment: "Application submitted", application_id: app11.id)
Communication.create(time: DateTime.new(2021, 11, 14), received: false, comment: "Followup sent", application_id: app11.id)

puts "✅ Done seeding!"
