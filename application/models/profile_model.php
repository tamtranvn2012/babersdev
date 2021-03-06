<?php
	Class Profile_model extends CI_Model{
		
		public function __construct()
		{
			parent::__construct();
			$this->load->database();
		}
		
		//Get user profile by userid - all info
		function get_all_invidual_info($userid)
		{
			if ($userid == 'all'){
				$query = $this->db->get('userprofile');
				$result = $query->result();			
			}
			if ($userid != 'all'){
				$userid = intval($userid);
				$this->db->where('userid', $userid);
				$query = $this->db->get('userprofile');
				$result = $query->result();			
			}			
			return $result;
		}

		//Get user profile by userid
		function get_upid_userid($userid)
		{
			$userid = intval($userid);
			$this->db->select('upid');
			$this->db->where('userid', $userid);
			$query = $this->db->get('userprofile');
			$result = $query->result();			
			return $result;
		}
		
		//Check profile id contant with bussiness profile or not?
		function check_userid_upid($userid,$upid)
		{
			$this->db->where('userid', $userid);
			$this->db->where('upid', $upid);
			$query = $this->db->get('userprofile');
			$result = $query->result();			
			if(count($result)){
				return true;
			}else{
				return false;
			}
		}
		
		//Check profile bpid contant with bussiness profile or not?
		function check_userid_bpid($userid,$bpid)
		{
			$this->db->where('userid', $userid);
			$this->db->where('bpid', $bpid);
			$query = $this->db->get('bussinessprofile');
			$result = $query->result();			
			if(count($result)){
				return true;
			}else{
				return false;
			}
		}
		
		//Save request approve result
		function save_request_approve($upid,$bpid)
		{
			$data = array(
			   'upid' => $upid ,
			   'bpid' => $bpid ,
			   'isapproved' => 0,
			);
			$this->db->insert('approveprofile', $data); 			
		}

		//Check existing approve result 
		function check_existing_approve($upid,$bpid)
		{
			$this->db->where('upid', $upid);
			$this->db->where('bpid', $bpid);
			$query = $this->db->get('approveprofile');
			$result = $query->result();			
			if(count($result)){
				return true;
			}else{
				return false;
			}			
		}

		//List all result approve by userid
		function get_all_approved($bpid,$isapproved)
		{
			$this->db->where('bpid', $bpid);
			$this->db->where('isapproved', $isapproved);
			$query = $this->db->get('approveprofile');
			$result = $query->result();			
			if(count($result)){
				return $result;
			}else{
				return false;
			}			
		}
		
		//Check approve  apid containt of bussiness profile id or not
		function check_apid_bpid($apid,$bpid){
			$this->db->where('apid', $apid);
			$this->db->where('bpid', $bpid);
			$query = $this->db->get('approveprofile');
			$result = $query->result();			
			if(count($result)){
				return $result;
			}else{
				return false;
			}						
		}
		
		//Approve profile id 
		function approved_apid($apid){
			$data = array(
						   'isapproved' => 1,
						);
			$this->db->where('apid', $apid);
			$this->db->update('approveprofile', $data); 			
		}

		//UnApprove profile id 
		function unapproved_apid($apid){
			$data = array(
						   'isapproved' => 0,
						);
			$this->db->where('apid', $apid);
			$this->db->update('approveprofile', $data); 			
		}

		//Check userprofile contant with bussisness profile or not
		function check_upid_bpid($upidrq,$bpid,$userid){
			$this->db->select('upid');
			$this->db->where('userid', $userid);
			$query = $this->db->get('userprofile');
			$result = $query->result();			
			$upiddb = 0;
			$upiddb = $result[0]->upid;
			if(intval($upiddb) == intval($upidrq)){
				$this->db->select('upid');
				$this->db->where('bpid', $bpid);
				$query1 = $this->db->get('approveprofile');
				$result1 = $query1->result();
				if(count($result1)){
					return true;
				}else{
					return false;
				}	
			}else{
				return false;
			}									
		}
		
		//Get apid from upid and bpid
		function get_apid($upid,$bpid){
			$this->db->select('apid');
			$this->db->where('upid', $upid);
			$this->db->where('bpid', $bpid);
			$query = $this->db->get('approveprofile');
			$result = $query->result();			
			return $result;
		}
		
		//Get all results for search by zipcode
		function search_by_zipcode($zipcode){
			$this->db->select('upid');
			$this->db->like('zip', $zipcode); 
			$query = $this->db->get('userprofile');
			return $query->result();
		}
		
		//Get approve id (apid) by userprofile id (upid)
		function get_apid_by_upid($upid){
			$this->db->select('apid');
			$this->db->where('upid', $upid);
			$query = $this->db->get('approveprofile');
			return $query->result();
		}
		
		//Get bussiness profile bpid by userid
		function get_bpid_by_userid($userid){
			$this->db->select('bpid');
			$this->db->where('userid', $userid);
			$query = $this->db->get('bussinessprofile');
			return $query->result();
		}
		
		//Get approve id apid from user profile id upid
		function get_apid_by_upid_allinfo($upid){
			$this->db->where('upid', $upid);
			$this->db->where('isapproved', 1);
			$query = $this->db->get('approveprofile');
			return $query->result();
		}
		
		
	}