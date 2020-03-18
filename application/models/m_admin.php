<?php

class m_admin extends CI_Model
{
	function select_all($table)
	{
		return $this->db->get($table);
	}
	function select_where($table, $where)
	{
		return $this->db->get_where($table, $where);
	}
	function select_where_or($table, $where, $or)
	{
		$this->db->from($table);
		$this->db->where($where);
		$this->db->or_where($or);
		return $this->db->get();
	}
	function select_where_in($table, $where, $in)
	{
		$this->db->from($table);
		$this->db->where_in($where, $in);
		return $this->db->get();
	}
	function insert_data($table, $data)
	{
		$this->db->insert($table, $data);
	}
	function delete_where($table, $where)
	{
		$this->db->delete($table, $where);
	}
	function update_data($table, $set, $where)
	{
		$this->db->where($where);
		$this->db->set($set);
		$this->db->update($table);
	}
	function select_join($select, $table1, $table2, $on)
	{
		$this->db->select($select);
		$this->db->from($table1);
		$this->db->join($table2, $on);

		return $this->db;
	}
	function select_join_type($select, $table1, $table2, $on, $type)
	{
		$this->db->select($select);
		$this->db->from($table1);
		$this->db->join($table2, $on, $type);

		return $this->db->get();
	}
	function select_join_type_where($select, $table1, $table2, $on, $type, $where)
	{
		$this->db->select($select);
		$this->db->from($table1);
		$this->db->join($table2, $on, $type);
		$this->db->where($where);

		return $this->db->get();
	}
	public function select_join_3($select, $table1, $table2, $on2, $type2, $table3, $on3, $type3, $order, $type_order)
	{
	    $this->db->select($select);
	    $this->db->from($table1); 
	    $this->db->join($table2, $on2, $type2);
	    $this->db->join($table3, $on3, $type3);
	    $this->db->order_by($order, $type_order);         
	    return $query = $this->db->get(); 
	}
	public function select_join_3_where($select, $table1, $table2, $on2, $type2, $table3, $on3, $type3, $where)
	{
	    $this->db->select($select);
	    $this->db->from($table1); 
	    $this->db->join($table2, $on2, $type2);
	    $this->db->join($table3, $on3, $type3);
	    $this->db->where($where);         
	    return $query = $this->db->get(); 
	}
	public function select_join_3_where_or($select, $table1, $table2, $on2, $type2, $table3, $on3, $type3, $where, $or)
	{
	    $this->db->select($select);
	    $this->db->from($table1); 
	    $this->db->join($table2, $on2, $type2);
	    $this->db->join($table3, $on3, $type3);
	    $this->db->where($where);
	    $this->db->or_where($or);       
	    return $query = $this->db->get(); 
	}
	public function select_join_4($select, $table1, $table2, $on2, $type2, $table3, $on3, $type3, $table4, $on4, $type4, $order, $type_order)
	{
	    $this->db->select($select);
	    $this->db->from($table1); 
	    $this->db->join($table2, $on2, $type2);
	    $this->db->join($table3, $on3, $type3);
	    $this->db->join($table4, $on4, $type4);
	    $this->db->order_by($order, $type_order);         
	    return $query = $this->db->get(); 
	}
	public function select_join_4_where($select, $table1, $table2, $on2, $type2, $table3, $on3, $type3, $table4, $on4, $type4, $where, $order, $type_order)
	{
	    $this->db->select($select);
	    $this->db->from($table1); 
	    $this->db->join($table2, $on2, $type2);
	    $this->db->join($table3, $on3, $type3);
	    $this->db->join($table4, $on4, $type4);
	    $this->db->order_by($order, $type_order);    
		$this->db->where($where);     
	    return $this->db->get(); 
	}
	public function select_max($max_table, $table)
	{
		$this->db->select_max($max_table);
		return $this->db->get($table);
	}
	public function update_batch($table, $set, $where)
	{
		$this->db->update_batch($table ,$set, $where); 
	}
}