--select distinct(batch_no),* from t_f_batch_module t  去重
--alter table t_f_staff_info modify SEX default('M');修改列
--alter table t_f_batch_regist modify owner_org_no varchar(21);
--order by org_level asc nulls last,org_no asc
--select   * from t_f_questions order by create_time desc  排序
--getProcQueryRtn(ProcQuery) 调结果集
--getProcBusinessRtn() 执行操作
--decode(b.sex,'M','男','女') 
-- nvl(null,0);
-- nvl2(null,'232','fdsfsd');
-- substr(b.birth_date, 6, 2) 字符串截取
--initcap('smith');首字母大写
--lower('AaBbCcDd') 大写;
--upper('AaBbCcDd')小写;
--ltrim(rtrim('   gao qian jing   ',' '),' ')去空格
--lpad(rpad('gao',10,'*'),17,'*') 填充
--length('oracle')  字符串长度
--yyyy-mm-dd day hh24:mi:ss
--GREATEST(1,2,3,...) 最大值
--LEAST(1,2,3,...) 最小值
--case when 2 in (1,2) then 1 end 
/*
declare 执行块

begin  
  dbms_output.put_line(123);--打印
exception
   when no_data_found then
      o_rtninfo := '没有相应数据';
      return;
    when others then
      o_rtninfo := sqlerrm;
     rollback; return;
 end;
 */
/**for 循环 
params_a := str_split(i_param1, '[~]');
for i in 1..params_a.count loop 
 	dbms_output.put_line(params_a(i));
end loop;
*/
select t.*,t.rowid from t_f_article_temp t;
select t.*,t.rowid from t_f_khzn_apply t;
select  t.*, t.rowid from T_f_ARTICLE t;      --文章发布
select  t.*, t.rowid from T_H_FEEDBACK t;   --评论回复
select t.*, t.rowid from T_H_HEADLINES t
select t.*,t.rowid from t_h_Textbook t; 
select t.*, t.rowid from T_h_SYS_MODULE t;
select t.*, t.rowid from t_h_menu t;
select t.*, t.rowid from T_H_MENU_SUBMOD t
select t.*, t.rowid from T_H_NEWS_SUB t；
select t.*, t.rowid from T_P_MODULE t;
select t.*, t.rowid from T_F_EXAMMEANS_BUY t;

select  t.*, t.rowid from t_p_sys_module t;  --系统模块
select t.*, t.rowid from t_p_menu t;		--菜单
select t.*, t.rowid from t_f_org t ;		--机构
select t.*, t.rowid from t_f_org_dept t;	--部门
select t.*, t.rowid from t_f_staff t ;		--人员
select t.*, t.rowid from t_f_staff_info t;	--人员基本信息
select t.*, t.rowid from t_f_user t;		--用户

select t.*, t.rowid from t_f_batch_regist_pre t;  --报名信息（提前）
select t.*, t.rowid from t_f_exam_score_pre t;  --报名模块（提前）



select t.*, t.rowid from t_f_examinee t;					--考生基本信息表
select t.*,t.rowid from t_f_batch_regist t;    			--考生考试报名登记表
select t.*, t.rowid from t_f_exam_score t;					--考试成绩表
select t.*, t.rowid from t_f_exam_score_sub  t;	    --子模块
select * from t_f_certificate;      --证书表
select * from t_f_certi_record;      --空白证书申请调拨记录表

select t.*, t.rowid from t_p_level_submodule t;  --等级参数

select t.*, t.rowid from t_f_red_user t;            --红名单
select t.*, t.rowid from t_f_examinee_qualification t; 		--考生资格鉴定表

select t.*, t.rowid from t_f_test t;						--考生在线考试登录记录表    
select t.*, t.rowid  from t_f_test_answer t ;		--考生在线考试答卷表     


select  t.*, t.rowid   from t_f_paper t;		      --试卷主表，包含客观题和主观题
select  t.*, t.rowid   from t_f_paper_sub t;      --试卷子表，保存主观题详细分项 
select  t.*, t.rowid  from t_f_questions_main t  where t.CONTENT like '%简答题%';     --试题库-试题总表
select  t.*, t.rowid  from t_f_questions_sub t;      --


select * from t_f_paper_struct;       --试卷结构表

select t.*, t.rowid from t_p_question_type t;         --试题类型表

--select  t.*, t.rowid  from t_f_paper_snapshot t;  			--试卷快照表   
--select  t.*, t.rowid   from t_f_paper_snapshot_item t;  --试卷快照子项表
--select   t.*, t.rowid from t_f_questions t;           --试题库-试题总表
--select   t.*, t.rowid from t_f_question_brief t;      --试题库-简答题  
--select   t.*, t.rowid from t_f_question_choice_m t;   --试题库-选择题-多项选择题
--select   t.*, t.rowid from t_f_question_choice_s t;   --试题库-选择题-单项选择题
--select   t.*, t.rowid from t_f_question_discuss t;    --试题库-论述题
--select   t.*, t.rowid from t_f_question_fill t;       --试题库-填空题
--select   t.*, t.rowid from t_f_question_judge t;      --试题库-判断题
--select   t.*, t.rowid from t_f_question_oper t;       --试题库-实操题


select t.*,t.rowid from t_f_paper_policy_batch t;  --配卷策略批次关系表，存放用户选择应用某个配卷策略生成的试卷是针对哪些批次。
select t.*, t.rowid  from t_f_paper_policy t;    --试题配卷策略总表
select t.*, t.rowid  from t_f_paper_policy_paper t;  --配卷策略试卷关系表

select t.*, t.rowid from t_f_exam_arrange t;   			--场次安排表
select t.*, t.rowid from t_p_level_submodule t;
select t.*, t.rowid from t_f_exam_examinee t;  			--场次考生安排
select t.*, t.rowid from t_f_batch_arrange_paper t; 	--试卷批次场次关系表 
select  t.*, t.rowid from t_p_exam_register t;      --考场考试情况登记表
select t.*, t.rowid from t_f_org_room_info t;--鉴定站考场信息表
select  t.*, t.rowid from t_p_exam_staff t;--考场工作人员安排

select t.* ,t.rowid from t_f_batch t;					--批次C-1-J-1
select t.* ,t.rowid from t_p_batch_state t;				--批次状态  
select t.*,t.rowid from  t_f_batch_module t;			--批次考核职业模块表


select t.* ,t.rowid from t_f_role t;  --角色
select t.* ,t.rowid from t_f_role_menu t;
select * from t_p_education;  --教育水平表
select * from t_p_title; --职称
select * from T_P_POST;      --岗位表

select * from t_p_occupation;--职业
select * from t_p_occupation_type; --职业类型
select * from t_p_work_type_relation; --职业工种等级关联表
select * from t_p_work_type;  --工种
select t.*, t.rowid from t_p_skill_level t;--技能等级表
select t.*, t.rowid from t_p_skill_level_module t ;--技能等级模块参数
select t.*, t.rowid from t_p_exam_module_staff t;--考核模块和人员配备关系表
select t.*, t.rowid from t_p_exam_module t ;    --考核模块参数表


       
select t.*, t.rowid from t_f_org_appraisal_info t;--鉴定站鉴定职业信息
select t.*, t.rowid from t_f_org_staff_info t;--鉴定站鉴定人员信息
select t.*, t.rowid from t_f_org_qualify t;--鉴定站鉴定资格审核情况表
select t.*, t.rowid from t_f_staff_qualify t;--人员资格审核情况表
select t.*, t.rowid from t_p_common t;      --通用参数表



select t.*, t.rowid from t_p_query_table_field t;--结果集条件
select t.*, t.rowid from t_p_query_field_cond t;--结果集

--模糊查结果集
select t.*, t.rowid from t_p_query_table_field t where t.action_str like '%Get_Paper_Paperbinding%';  
select t.*, t.rowid from t_p_query_field_cond t where t.action_str like '%Get_Paper_Paperbinding%';
select t.*, t.rowid from t_p_query_table_field t where t.action_str like '%get_LackOfTest%';  
select t.*, t.rowid from t_p_query_field_cond t where t.action_str like '%get_LackOfTest%';


--查阅模型
select 'select * from ' || a.table_name || ';      --' || b.comments  from user_tables a, user_tab_comments b   where a.table_name = b.table_name  order by 1;


select * from t_f_test_answer where examinee_id='142015052121064600477' and paper_id='12345601'
select b.occu_id,b.work_type_id,b.skill_level_id,b.exam_module_id from t_f_test_answer a,t_f_test b where a.paper_id=b.paper_id and  a.examinee_id='142015052121064600477' and a.paper_id='12345601'


select * from t_f_test_answer where examinee_id='142015052121064600477' and paper_id='12345601'
select b.occu_id,b.work_type_id,b.skill_level_id,b.exam_module_id from t_f_test_answer a,t_f_test b where a.paper_id=b.paper_id and  a.examinee_id='142015052121064600477' and a.paper_id='12345601'


select   b.question_type_desc,a.question_type,count(a.question_type) from t_f_questions a,t_p_question_type b where a.question_type=b.qustion_type  group by a.question_type,b.question_type_desc;
select   b.question_type_desc,a.question_type,count(a.question_type) from t_f_questions a,t_p_question_type b where a.create_user_id='a0002' and a.question_type=b.qustion_type  group by a.question_type,b.question_type_desc;
select *  from t_f_questions where create_user_id='a0002'  order by create_time desc; 

--update t_f_test set exam_end_time='' where examinee_id='142015052121064600477';
--update t_f_exam_arrange set exam_end_time=to_date('2015-7-1 17:45:00','yyyy-mm-dd hh24:mi:ss') where exam_arrange_id='86083031LL1506071';
--rollback;
--commit;
