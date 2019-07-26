class ArticlesController < ApplicationController
	def mynew
		@article = Article.new
	end

	def myindex
		@myallarticle = Article.all
	end

	def mycreate
       @article = Article.new(hello_hiiii)
		 
		  if @article.save
		  redirect_to my_s_article_path(@article)
		  else
		  	render 'mynew'
		  end
	end

	def myedit
	  @article11 = Article.find(params[:dke])
	end

	def myshow
		@article = Article.find(params[:dks])
	end

	def myupd
	  @article11 = Article.find(params[:dku])
	 
	  if @article11.update(hello_hiiii)
	    redirect_to my_i_article_path
	  else
	    render 'myedit'
	  end
	end

	def mydel
	  @article11 = Article.find(params[:dkd])
	  @article11.destroy	 
	  redirect_to my_i_article_path
	end



	private

	def hello_hiiii
		params.require(:myallarticle).permit(:title, :text)
	end
end


