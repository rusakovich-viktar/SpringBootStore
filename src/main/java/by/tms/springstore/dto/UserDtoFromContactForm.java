package by.tms.springstore.dto;

import static by.tms.springstore.utils.Constants.Attributes.EMAIL_PATTERN;
import static by.tms.springstore.utils.Constants.Attributes.PHONE_PATTERN;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Pattern;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class UserDtoFromContactForm {

    @Email(regexp = EMAIL_PATTERN, message = "Неверный формат электронной почты")
    private String email;

    @Pattern(regexp = PHONE_PATTERN, message = "Введите номер в международном формате: +375291112233")
    private String phone;

    private String message;

}
