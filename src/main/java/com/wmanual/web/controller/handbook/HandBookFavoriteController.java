package com.wmanual.web.controller.handbook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.wmanual.configure.EmailConfigure;
import com.wmanual.jpa.domain.HandBookDomain;
import com.wmanual.jpa.domain.HandBookFavoriteDomain;
import com.wmanual.jpa.domain.User;
import com.wmanual.jpa.service.HandBookFavoriteRepository;
import com.wmanual.jpa.service.HandBookRepository;
import com.wmanual.jpa.service.UserRepository;
import com.wmanual.web.playload.FavoritePlayLoad;

@RestController
@RequestMapping(value = "/favor")
public class HandBookFavoriteController {
	
	@Autowired
	private HandBookFavoriteRepository hbfRepository;
	
	@Autowired
	private HandBookRepository hbRepository;

	@Autowired
	private UserRepository userRepository;
		
	@RequestMapping("")
	public Iterable<HandBookFavoriteDomain> all() throws Exception {
		return hbfRepository.findAll();
	}

	@RequestMapping("/{uid}")
	public Iterable<HandBookFavoriteDomain> allByUser(@PathVariable("uid") Long uid) throws Exception {
		return hbfRepository.findByUserId(uid);
	}

	@RequestMapping(value = "/{uid}/{hbid}", method = RequestMethod.POST)
	public ResponseEntity<String> add(@PathVariable("uid") Long uid, @PathVariable("hbid") Long hbid,
			@RequestBody FavoritePlayLoad favorteLoad) throws Exception {

		User user = userRepository.findOne(uid);
		HandBookDomain hbook = hbRepository.findOne(hbid);
		HandBookFavoriteDomain hbookfav = new HandBookFavoriteDomain();
		hbookfav.setUser(user);
		hbookfav.setHandBook(hbook);
		hbookfav.setAlias(favorteLoad.getAlias());
		hbookfav.setComment(favorteLoad.getComment());
		
		hbfRepository.save(hbookfav);
		return new ResponseEntity<String>("", HttpStatus.OK);
	}
	
	@RequestMapping(value = "/{fid}", method = RequestMethod.DELETE)
	public ResponseEntity<String> delete(@PathVariable("fid") Long fid) throws Exception {
		hbfRepository.delete(fid);
		return new ResponseEntity<String>("", HttpStatus.OK);
	}

}
