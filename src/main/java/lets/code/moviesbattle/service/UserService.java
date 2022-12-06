package lets.code.moviesbattle.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import lets.code.moviesbattle.dto.UserDto;
import lets.code.moviesbattle.mapper.UserMapper;
import lets.code.moviesbattle.model.User;
import lets.code.moviesbattle.repository.UserRepository;

@Service
public class UserService {

	@Autowired
    private UserRepository userRepository;

	@Autowired
    private UserMapper userMapper;

    private BCryptPasswordEncoder bCryptPasswordEncoder;

    public UserDto create(UserDto userDto) {
    	
    	userDto.setPassword(bCryptPasswordEncoder.encode(userDto.getPassword()));
        var user = userRepository.save(userMapper.toModel(userDto));
        return userMapper.toDto(user);
    }

    public Optional<User> getByUsername(String username) {
    	Optional<User> user = userRepository.findByUsername(username);
        return user;
    }
}

