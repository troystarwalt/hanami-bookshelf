module Web::Controllers::Books
	class Destroy
		include Web::Action

		expose :book

		def call(params)
			@book = BookRepository.params(:book)
			BookRepository.delete(@book)
			
			redirect_to routes.books_path
		end
	end
end
