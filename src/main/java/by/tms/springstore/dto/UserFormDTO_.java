package by.tms.springstore.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;

@Getter
@Setter
@NoArgsConstructor
public class UserFormDTO_ {

    @NotEmpty(message = "Поле не должно быть пустым")
    @Size(min = 2, max = 30, message = "Name should not be between 2 and 30 character")
    private String username;
    @Email(message = "Invalid email address")
    @NotEmpty(message = "Поле не должно быть пустым")
    private String email;
    @Size(min = 2, message = "Pass should not be less 2 character")
    @NotEmpty(message = "Поле не должно быть пустым")
    private String password;
    private String verifyPassword;


}
