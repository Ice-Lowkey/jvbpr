package jvb.vn.prj.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.Instant;

@Getter
@Setter
@Entity
@Table(name = "users")
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "username", nullable = false, length = 155)
    private String username;

    @Column(name = "password", nullable = false)
    private String password;

    @Column(name = "actived_flag", nullable = false, columnDefinition = "int default 1")
    private Integer activedFlag;

    @Column(name = "updated", nullable = false)
    private Instant updated;

    @Column(name = "email", nullable = false)
    private String email;

    @Column(name = "created", nullable = false)
    private Instant created;

    @Column(name = "role", nullable = false)
    private String role;

    @PrePersist
    protected void onCreate() {
        Instant now = Instant.now();
        this.created = now;
        this.updated = now;
    }

    @PreUpdate
    protected void onUpdate() {
        this.updated = Instant.now();
    }
}