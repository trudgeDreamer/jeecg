package com.jeecg.entity.question;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;

/**   
 * @Title: Entity
 * @Description: 考试信息表
 * @author zhangdaihao
 * @date 2017-06-11 22:55:00
 * @version V1.0   
 *
 */
@Entity
@Table(name = "exam", schema = "")
@DynamicUpdate(true)
@DynamicInsert(true)
@SuppressWarnings("serial")
public class QuestionEntity implements java.io.Serializable {
	/**主键*/
	private java.lang.String id;
	/**创建人名称*/
	private java.lang.String createName;
	/**创建人登录名称*/
	private java.lang.String createBy;
	/**创建日期*/
	private java.util.Date createDate;
	/**更新人名称*/
	private java.lang.String updateName;
	/**更新人登录名称*/
	private java.lang.String updateBy;
	/**更新日期*/
	private java.util.Date updateDate;
	/**选项A*/
	private java.lang.String optionA;
	/**选项B*/
	private java.lang.String optionB;
	/**选项C*/
	private java.lang.String optionC;
	/**选项D*/
	private java.lang.String optionD;
	/**答案*/
	private java.lang.String answer;
	/**问题*/
	private java.lang.String question;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  主键
	 */
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name ="ID",nullable=false,length=50)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  主键
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人名称
	 */
	@Column(name ="CREATE_NAME",nullable=true,length=50)
	public java.lang.String getCreateName(){
		return this.createName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人名称
	 */
	public void setCreateName(java.lang.String createName){
		this.createName = createName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  创建人登录名称
	 */
	@Column(name ="CREATE_BY",nullable=true,length=50)
	public java.lang.String getCreateBy(){
		return this.createBy;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  创建人登录名称
	 */
	public void setCreateBy(java.lang.String createBy){
		this.createBy = createBy;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  创建日期
	 */
	@Column(name ="CREATE_DATE",nullable=true)
	public java.util.Date getCreateDate(){
		return this.createDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  创建日期
	 */
	public void setCreateDate(java.util.Date createDate){
		this.createDate = createDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  更新人名称
	 */
	@Column(name ="UPDATE_NAME",nullable=true,length=50)
	public java.lang.String getUpdateName(){
		return this.updateName;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  更新人名称
	 */
	public void setUpdateName(java.lang.String updateName){
		this.updateName = updateName;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  更新人登录名称
	 */
	@Column(name ="UPDATE_BY",nullable=true,length=50)
	public java.lang.String getUpdateBy(){
		return this.updateBy;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  更新人登录名称
	 */
	public void setUpdateBy(java.lang.String updateBy){
		this.updateBy = updateBy;
	}
	/**
	 *方法: 取得java.util.Date
	 *@return: java.util.Date  更新日期
	 */
	@Column(name ="UPDATE_DATE",nullable=true)
	public java.util.Date getUpdateDate(){
		return this.updateDate;
	}

	/**
	 *方法: 设置java.util.Date
	 *@param: java.util.Date  更新日期
	 */
	public void setUpdateDate(java.util.Date updateDate){
		this.updateDate = updateDate;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  选项A
	 */
	@Column(name ="OPTION_A",nullable=false,length=200)
	public java.lang.String getOptionA(){
		return this.optionA;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  选项A
	 */
	public void setOptionA(java.lang.String optionA){
		this.optionA = optionA;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  选项B
	 */
	@Column(name ="OPTION_B",nullable=false,length=200)
	public java.lang.String getOptionB(){
		return this.optionB;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  选项B
	 */
	public void setOptionB(java.lang.String optionB){
		this.optionB = optionB;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  选项C
	 */
	@Column(name ="OPTION_C",nullable=false,length=200)
	public java.lang.String getOptionC(){
		return this.optionC;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  选项C
	 */
	public void setOptionC(java.lang.String optionC){
		this.optionC = optionC;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  选项D
	 */
	@Column(name ="OPTION_D",nullable=false,length=200)
	public java.lang.String getOptionD(){
		return this.optionD;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  选项D
	 */
	public void setOptionD(java.lang.String optionD){
		this.optionD = optionD;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  答案
	 */
	@Column(name ="ANSWER",nullable=false,length=100)
	public java.lang.String getAnswer(){
		return this.answer;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  答案
	 */
	public void setAnswer(java.lang.String answer){
		this.answer = answer;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  问题
	 */
	@Column(name ="QUESTION",nullable=false,length=500)
	public java.lang.String getQuestion(){
		return this.question;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  问题
	 */
	public void setQuestion(java.lang.String question){
		this.question = question;
	}
}
