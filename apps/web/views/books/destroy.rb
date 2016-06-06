module Web::Views::Books
	class Destroy
		include Web::View
		template 'books'

		def deleteform
			form_for :book, routes.books_path do
				BookRepository.delete(@book)
			end
		end
	end
end