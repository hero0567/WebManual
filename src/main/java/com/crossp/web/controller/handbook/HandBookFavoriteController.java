package com.crossp.web.controller.handbook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.crossp.jpa.domain.HandBookDomain;
import com.crossp.jpa.domain.HandBookFavoriteDomain;
import com.crossp.jpa.domain.User;
import com.crossp.jpa.service.HandBookFavoriteRepository;
import com.crossp.jpa.service.HandBookRepository;
import com.crossp.jpa.service.UserRepository;
import com.crossp.web.playload.FavoritePlayLoad;

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

	@RequestMapping("/{uid}/{hbid}")
	public ResponseEntity<String> add(@PathVariable("uid") Long uid, @PathVariable("hbid") Long hbid,
			@RequestBody FavoritePlayLoad favorteLoad) throws Exception {

		User user = userRepository.findOne(uid);
		HandBookDomain hbook = hbRepository.findOne(hbid);
		HandBookFavoriteDomain hbookfav = new HandBookFavoriteDomain();
		hbookfav.setUser(user);
		hbookfav.setHandBook(hbook);
		hbookfav.setAlias(favorteLoad.getAlias());
		hbookfav.setCommnet(favorteLoad.getCommnet());
		
		hbfRepository.save(hbookfav);
		return new ResponseEntity<String>("", HttpStatus.OK);
	}

}
