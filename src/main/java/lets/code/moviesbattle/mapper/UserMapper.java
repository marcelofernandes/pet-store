package lets.code.moviesbattle.mapper;

import lets.code.moviesbattle.dto.UserDto;
import lets.code.moviesbattle.model.User;
import org.springframework.stereotype.Component;

@Component
public class UserMapper {

    public UserDto toDto(User user) {
    	UserDto dto = new UserDto();
    	dto.setId(user.getId());
    	dto.setName(user.getName());
    	dto.setUsername(user.getUsername());
    	return dto;
    }

    public User toModel(UserDto userDto) {
    	User user = new User();
    	user.setId(userDto.getId());
    	user.setName(userDto.getName());
    	user.setUsername(userDto.getUsername());
    	return user;
    }
}
