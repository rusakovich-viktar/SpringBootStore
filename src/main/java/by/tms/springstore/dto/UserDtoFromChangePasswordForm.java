package by.tms.springstore.dto;

import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDtoFromChangePasswordForm {

    private String oldPassword;

    @Size(min = 2, message = "Pass should not be less 2 character")
    private String newPassword;

}