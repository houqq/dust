--select distinct(batch_no),* from t_f_batch_module t  ȥ��
--alter table t_f_staff_info modify SEX default('M');�޸���
--alter table t_f_batch_regist modify owner_org_no varchar(21);
--order by org_level asc nulls last,org_no asc
--select   * from t_f_questions order by create_time desc  ����
--getProcQueryRtn(ProcQuery) �������
--getProcBusinessRtn() ִ�в���
--decode(b.sex,'M','��','Ů') 
-- nvl(null,0);
-- nvl2(null,'232','fdsfsd');
-- substr(b.birth_date, 6, 2) �ַ�����ȡ
--initcap('smith');����ĸ��д
--lower('AaBbCcDd') ��д;
--upper('AaBbCcDd')Сд;
--ltrim(rtrim('   gao qian jing   ',' '),' ')ȥ�ո�
--lpad(rpad('gao',10,'*'),17,'*') ���
--length('oracle')  �ַ�������
--yyyy-mm-dd day hh24:mi:ss
--GREATEST(1,2,3,...) ���ֵ
--LEAST(1,2,3,...) ��Сֵ
--case when 2 in (1,2) then 1 end 
/*
declare ִ�п�

begin  
  dbms_output.put_line(123);--��ӡ
exception
   when no_data_found then
      o_rtninfo := 'û����Ӧ����';
      return;
    when others then
      o_rtninfo := sqlerrm;
     rollback; return;
 end;
 */
/**for ѭ�� 
params_a := str_split(i_param1, '[~]');
for i in 1..params_a.count loop 
 	dbms_output.put_line(params_a(i));
end loop;
*/
select t.*,t.rowid from t_f_article_temp t;
select t.*,t.rowid from t_f_khzn_apply t;
select  t.*, t.rowid from T_f_ARTICLE t;      --���·���
select  t.*, t.rowid from T_H_FEEDBACK t;   --���ۻظ�
select t.*, t.rowid from T_H_HEADLINES t
select t.*,t.rowid from t_h_Textbook t; 
select t.*, t.rowid from T_h_SYS_MODULE t;
select t.*, t.rowid from t_h_menu t;
select t.*, t.rowid from T_H_MENU_SUBMOD t
select t.*, t.rowid from T_H_NEWS_SUB t��
select t.*, t.rowid from T_P_MODULE t;
select t.*, t.rowid from T_F_EXAMMEANS_BUY t;

select  t.*, t.rowid from t_p_sys_module t;  --ϵͳģ��
select t.*, t.rowid from t_p_menu t;		--�˵�
select t.*, t.rowid from t_f_org t ;		--����
select t.*, t.rowid from t_f_org_dept t;	--����
select t.*, t.rowid from t_f_staff t ;		--��Ա
select t.*, t.rowid from t_f_staff_info t;	--��Ա������Ϣ
select t.*, t.rowid from t_f_user t;		--�û�

select t.*, t.rowid from t_f_batch_regist_pre t;  --������Ϣ����ǰ��
select t.*, t.rowid from t_f_exam_score_pre t;  --����ģ�飨��ǰ��



select t.*, t.rowid from t_f_examinee t;					--����������Ϣ��
select t.*,t.rowid from t_f_batch_regist t;    			--�������Ա����ǼǱ�
select t.*, t.rowid from t_f_exam_score t;					--���Գɼ���
select t.*, t.rowid from t_f_exam_score_sub  t;	    --��ģ��
select * from t_f_certificate;      --֤���
select * from t_f_certi_record;      --�հ�֤�����������¼��

select t.*, t.rowid from t_p_level_submodule t;  --�ȼ�����

select t.*, t.rowid from t_f_red_user t;            --������
select t.*, t.rowid from t_f_examinee_qualification t; 		--�����ʸ������

select t.*, t.rowid from t_f_test t;						--�������߿��Ե�¼��¼��    
select t.*, t.rowid  from t_f_test_answer t ;		--�������߿��Դ���     


select  t.*, t.rowid   from t_f_paper t;		      --�Ծ����������͹����������
select  t.*, t.rowid   from t_f_paper_sub t;      --�Ծ��ӱ�������������ϸ���� 
select  t.*, t.rowid  from t_f_questions_main t  where t.CONTENT like '%�����%';     --�����-�����ܱ�
select  t.*, t.rowid  from t_f_questions_sub t;      --


select * from t_f_paper_struct;       --�Ծ�ṹ��

select t.*, t.rowid from t_p_question_type t;         --�������ͱ�

--select  t.*, t.rowid  from t_f_paper_snapshot t;  			--�Ծ���ձ�   
--select  t.*, t.rowid   from t_f_paper_snapshot_item t;  --�Ծ���������
--select   t.*, t.rowid from t_f_questions t;           --�����-�����ܱ�
--select   t.*, t.rowid from t_f_question_brief t;      --�����-�����  
--select   t.*, t.rowid from t_f_question_choice_m t;   --�����-ѡ����-����ѡ����
--select   t.*, t.rowid from t_f_question_choice_s t;   --�����-ѡ����-����ѡ����
--select   t.*, t.rowid from t_f_question_discuss t;    --�����-������
--select   t.*, t.rowid from t_f_question_fill t;       --�����-�����
--select   t.*, t.rowid from t_f_question_judge t;      --�����-�ж���
--select   t.*, t.rowid from t_f_question_oper t;       --�����-ʵ����


select t.*,t.rowid from t_f_paper_policy_batch t;  --���������ι�ϵ������û�ѡ��Ӧ��ĳ�����������ɵ��Ծ��������Щ���Ρ�
select t.*, t.rowid  from t_f_paper_policy t;    --�����������ܱ�
select t.*, t.rowid  from t_f_paper_policy_paper t;  --�������Ծ��ϵ��

select t.*, t.rowid from t_f_exam_arrange t;   			--���ΰ��ű�
select t.*, t.rowid from t_p_level_submodule t;
select t.*, t.rowid from t_f_exam_examinee t;  			--���ο�������
select t.*, t.rowid from t_f_batch_arrange_paper t; 	--�Ծ����γ��ι�ϵ�� 
select  t.*, t.rowid from t_p_exam_register t;      --������������ǼǱ�
select t.*, t.rowid from t_f_org_room_info t;--����վ������Ϣ��
select  t.*, t.rowid from t_p_exam_staff t;--����������Ա����

select t.* ,t.rowid from t_f_batch t;					--����C-1-J-1
select t.* ,t.rowid from t_p_batch_state t;				--����״̬  
select t.*,t.rowid from  t_f_batch_module t;			--���ο���ְҵģ���


select t.* ,t.rowid from t_f_role t;  --��ɫ
select t.* ,t.rowid from t_f_role_menu t;
select * from t_p_education;  --����ˮƽ��
select * from t_p_title; --ְ��
select * from T_P_POST;      --��λ��

select * from t_p_occupation;--ְҵ
select * from t_p_occupation_type; --ְҵ����
select * from t_p_work_type_relation; --ְҵ���ֵȼ�������
select * from t_p_work_type;  --����
select t.*, t.rowid from t_p_skill_level t;--���ܵȼ���
select t.*, t.rowid from t_p_skill_level_module t ;--���ܵȼ�ģ�����
select t.*, t.rowid from t_p_exam_module_staff t;--����ģ�����Ա�䱸��ϵ��
select t.*, t.rowid from t_p_exam_module t ;    --����ģ�������


       
select t.*, t.rowid from t_f_org_appraisal_info t;--����վ����ְҵ��Ϣ
select t.*, t.rowid from t_f_org_staff_info t;--����վ������Ա��Ϣ
select t.*, t.rowid from t_f_org_qualify t;--����վ�����ʸ���������
select t.*, t.rowid from t_f_staff_qualify t;--��Ա�ʸ���������
select t.*, t.rowid from t_p_common t;      --ͨ�ò�����



select t.*, t.rowid from t_p_query_table_field t;--���������
select t.*, t.rowid from t_p_query_field_cond t;--�����

--ģ��������
select t.*, t.rowid from t_p_query_table_field t where t.action_str like '%Get_Paper_Paperbinding%';  
select t.*, t.rowid from t_p_query_field_cond t where t.action_str like '%Get_Paper_Paperbinding%';
select t.*, t.rowid from t_p_query_table_field t where t.action_str like '%get_LackOfTest%';  
select t.*, t.rowid from t_p_query_field_cond t where t.action_str like '%get_LackOfTest%';


--����ģ��
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
