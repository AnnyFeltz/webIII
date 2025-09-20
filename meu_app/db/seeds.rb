# Limpa registros antigos
Comment.destroy_all
Post.destroy_all
User.destroy_all

# Cria posts
hello_post = Post.create!(title: "Hello", content: "HELLOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO")
bye_post   = Post.create!(title: "Bye",   content: "BYEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE")
hi_post    = Post.create!(title: "HI",    content: "HIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII")

# Cria comentários (opcional)
Comment.create!(title: "Comentário 1", content: "Comentando Hello", post: hello_post)
Comment.create!(title: "Comentário 2", content: "Comentando Bye",   post: bye_post)

# Cria usuário com Devise
User.create!(
  email: "ana@gmail.com",
  password: "12345678",
  password_confirmation: "12345786"
)
