package com.dao;

import java.util.List;

import com.entity.BookDtls;

public interface BookDAO {
	public boolean addBooks(BookDtls b);

	public List<BookDtls> getAllBooks();

	public BookDtls getBookbyid(int bookId);

	public boolean updateEditbooks(BookDtls b);

	public boolean deleteBooks(int id);
	
	public List<BookDtls> getNewBook();
	
	public List<BookDtls> getPopularBook();
	
	public List<BookDtls> getVintageBook();
	
	public List<BookDtls> getAllNewBook();
	
	public List<BookDtls> getAllPopularBook();
	
	public List<BookDtls> getAllVintageBook();

}
