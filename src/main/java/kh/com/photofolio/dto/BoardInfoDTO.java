package kh.com.photofolio.dto;

import java.sql.Date;

import oracle.net.aso.c;

public class BoardInfoDTO {
	private int user_type;
	private String profilephoto_path;
	private int post_no;
	private String post_writer;
	private String post_writer_nickname;
	private String post_title;
	private String post_content;
	private Date post_createdDate;
	private int post_view_count;
	private int category_no;
	private int seq_file;
	private String origin_name;
	private String system_name;
	private int likeCnt;
	private int commentCnt;
	
	public BoardInfoDTO() {}
	public BoardInfoDTO(int user_type, String profilephoto_path, int post_no, String post_writer, String post_writer_nickname,
			String post_title, String post_content, Date post_createdDate, int post_view_count, int category_no,
			int seq_file, String origin_name, String system_name, int likeCnt, int commentCnt) {
		super();
		this.user_type = user_type;
		this.profilephoto_path = profilephoto_path;
		this.post_no = post_no;
		this.post_writer = post_writer;
		this.post_writer_nickname = post_writer_nickname;
		this.post_title = post_title;
		this.post_content = post_content;
		this.post_createdDate = post_createdDate;
		this.post_view_count = post_view_count;
		this.category_no = category_no;
		this.seq_file = seq_file;
		this.origin_name = origin_name;
		this.system_name = system_name;
		this.likeCnt = likeCnt;
		this.commentCnt = commentCnt;
	}

	public String getProfilephoto_path() {
		return profilephoto_path;
	}

	public void setProfilephoto_path(String profilephoto_path) {
		this.profilephoto_path = profilephoto_path;
	}

	public int getPost_no() {
		return post_no;
	}

	public void setPost_no(int post_no) {
		this.post_no = post_no;
	}

	public String getPost_writer() {
		return post_writer;
	}

	public void setPost_writer(String post_writer) {
		this.post_writer = post_writer;
	}

	public String getPost_writer_nickname() {
		return post_writer_nickname;
	}

	public void setPost_writer_nickname(String post_writer_nickname) {
		this.post_writer_nickname = post_writer_nickname;
	}

	public String getPost_title() {
		return post_title;
	}

	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}

	public String getPost_content() {
		return post_content;
	}

	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}

	public Date getPost_createdDate() {
		return post_createdDate;
	}

	public void setPost_createdDate(Date post_createdDate) {
		this.post_createdDate = post_createdDate;
	}

	public int getPost_view_count() {
		return post_view_count;
	}

	public void setPost_view_count(int post_view_count) {
		this.post_view_count = post_view_count;
	}

	public int getCategory_no() {
		return category_no;
	}

	public void setCategory_no(int category_no) {
		this.category_no = category_no;
	}

	public int getSeq_file() {
		return seq_file;
	}

	public void setSeq_file(int seq_file) {
		this.seq_file = seq_file;
	}

	public String getOrigin_name() {
		return origin_name;
	}

	public void setOrigin_name(String origin_name) {
		this.origin_name = origin_name;
	}

	public String getSystem_name() {
		return system_name;
	}

	public void setSystem_name(String system_name) {
		this.system_name = system_name;
	}

	public int getLikeCnt() {
		return likeCnt;
	}

	public void setLikeCnt(int likeCnt) {
		this.likeCnt = likeCnt;
	}
	public int getCommentCnt() {
		return commentCnt;
	}
	public void setCommentCnt(int commentCnt) {
		this.commentCnt = commentCnt;
	}
	public int getUser_type() {
		return user_type;
	}
	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}
	
}