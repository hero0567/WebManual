package com.wmanual.web.controller.rest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.wmanual.jpa.domain.ManualDomain;
import com.wmanual.jpa.domain.ManualFavoriteDomain;
import com.wmanual.jpa.domain.User;
import com.wmanual.jpa.service.ManualFavoriteRepository;
import com.wmanual.jpa.service.ManualRepository;
import com.wmanual.jpa.service.UserRepository;
import com.wmanual.web.playload.FavoritePlayLoad;

@RestController
@RequestMapping(value = "/favor")
public class ManualFavoriteController {
	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private ManualFavoriteRepository hbfRepository;
	
	@Autowired
	private ManualRepository hbRepository;

	@Autowired
	private UserRepository userRepository;
		
	@RequestMapping("")
	public Iterable<ManualFavoriteDomain> all() throws Exception {
		return hbfRepository.findAll();
	}

	@RequestMapping("/{uid}")
	public Iterable<ManualFavoriteDomain> allByUser(@PathVariable("uid") Long uid,
			@RequestParam(value = "pn", required = false, defaultValue = "0") int pn,
			@RequestParam(value = "size", required = false, defaultValue = "0") int size) throws Exception {
		if (size > 0) {
			Pageable page = new PageRequest(pn, size);
			return hbfRepository.findByUserIdPage(uid, page);
		}
		return hbfRepository.findByUserId(uid);
	}
	
	@RequestMapping("/{uid}/{subType}")
	public Iterable<ManualFavoriteDomain> findByUserIDAndSubType(@PathVariable("uid") Long uid,
			@PathVariable(value = "subType") String subType,
			@RequestParam(value = "pn", required = false, defaultValue = "0") int pn,
			@RequestParam(value = "size", required = false, defaultValue = "0") int size) throws Exception {
		if (size > 0) {
			Pageable page = new PageRequest(pn, size);
			return hbfRepository.findByUserIdAndHandBookSubTypePage(uid, subType, page);
		}
		return hbfRepository.findByUserIdAndHandBookSubType(uid, subType);
	}
	
	

	@RequestMapping(value = "/{uid}/{hbid}", method = RequestMethod.POST)
	public ResponseEntity<String> add(@PathVariable("uid") Long uid, @PathVariable("hbid") Long hbid,
			@RequestBody FavoritePlayLoad favorteLoad) throws Exception {

		logger.info("User[{}] Add handbook[{}] as favorite.", uid, hbid);
		
		User user = userRepository.findOne(uid);
		ManualDomain hbook = hbRepository.findOne(hbid);
		ManualFavoriteDomain hbookfav = new ManualFavoriteDomain();
		hbookfav.setUser(user);
		hbookfav.setHandBook(hbook);
		hbookfav.setAlias(favorteLoad.getAlias());
		hbookfav.setComment(favorteLoad.getComment());		
		hbfRepository.save(hbookfav);

		ManualDomain hb = hbRepository.findOne(hbid);
		int favorCount = hb.getFavorCount();
		hb.setFavorCount(++favorCount);	
		hbRepository.save(hb);
		
		logger.info("User[{}] Add handbook[{}] as successful. {}", uid, hbid, hb.getId());
		
		return new ResponseEntity<String>(HttpStatus.OK);
	}
	
	
	@RequestMapping(value = "/{uid}/{hbid}", method = RequestMethod.DELETE)
	public ResponseEntity<String> deleteByUID(@PathVariable("uid") Long uid, @PathVariable("hbid") Long hbid) throws Exception {
		hbfRepository.deleteByUIDAndHBID(uid, hbid);
		
		//		HandBookDomain hb = hbRepository.findOne(hbid);
		//		int favorCount = hb.getFavorCount();
		//		favorCount = favorCount <= 0 ? 0 : --favorCount;
		//		hb.setFavorCount(favorCount);	
		//		hbRepository.save(hb);
		return new ResponseEntity<String>(HttpStatus.OK);
	}
	
	@RequestMapping(value = "/{fid}", method = RequestMethod.DELETE)
	public ResponseEntity<String> delete(@PathVariable("fid") Long fid, @RequestParam(value = "hbid", required = false, defaultValue = "0") Long hbid) throws Exception {
		if (hbid != 0){
			hbfRepository.delete(fid);
			
			ManualDomain hb = hbRepository.findOne(hbid);
			int favorCount = hb.getFavorCount();
			favorCount = favorCount <= 0 ? 0 : favorCount--;
			hb.setFavorCount(favorCount);	
			hbRepository.save(hb);
		}else{
			hbfRepository.delete(fid);
		}
		
		return new ResponseEntity<String>(HttpStatus.OK);
	}

}
