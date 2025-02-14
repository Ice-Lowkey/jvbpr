package jvb.vn.prj.dto;

import jvb.vn.prj.entities.UserEntity;
import lombok.Data;

import java.time.Instant;

@Data
public class UserDto {
    int id;
    String username;
    String password;
    int actived_flag;
    Instant updated;
    String email;
    Instant created;
    String role;

    public UserEntity mapperEntity() {
        UserEntity userEntity = new UserEntity();
        userEntity.setUsername(username);
        userEntity.setPassword(password);
        userEntity.setEmail(email);
        userEntity.setRole(role);
        return userEntity;
    }
}
