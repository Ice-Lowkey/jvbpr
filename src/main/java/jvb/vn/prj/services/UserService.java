package jvb.vn.prj.services;


import jvb.vn.prj.dto.UserDto;
import jvb.vn.prj.entities.UserEntity;
import jvb.vn.prj.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserRepository userRepository;

    public UserEntity save(UserDto userDto) {
        UserEntity userEntity = userDto.mapperEntity();
        return userRepository.save(userEntity);
    }


}
