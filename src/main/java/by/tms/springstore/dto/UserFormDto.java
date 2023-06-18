//package by.tms.springstore.dto;
//
//
//import jakarta.validation.constraints.Email;
//import jakarta.validation.constraints.NotBlank;
//import jakarta.validation.constraints.NotNull;
//import jakarta.validation.constraints.Pattern;
//import jakarta.validation.groups.Default;
//import lombok.Getter;
//import lombok.NoArgsConstructor;
//import lombok.Setter;
//import lombok.experimental.SuperBuilder;
//
//import java.time.LocalDate;
//
//@NoArgsConstructor
//@SuperBuilder
//@Getter
//@Setter
//public class UserFormDto {
//
//    private Long id;
//
//    @NotBlank(groups = Default.class, message = "Enter password")
//    @Pattern(groups = Default.class, regexp = AUTHORIZATION_PATTERN, message = "Incorrect password")
//    private String password;
//
//    @NotBlank(groups = Default.class, message = "Enter login")
//    @Pattern(groups = Default.class, regexp = AUTHORIZATION_PATTERN, message = "Incorrect login")
//    private String login;
//
//    @NotBlank(groups = ExcludeLogValidation.class, message = "Enter name")
//    @Pattern(groups = ExcludeLogValidation.class, regexp = NAMES_PATTERN, message = "Incorrect name")
//    private String name;
//
//    @NotBlank(groups = ExcludeLogValidation.class, message = "Enter surname")
//    @Pattern(groups = ExcludeLogValidation.class, regexp = NAMES_PATTERN, message = "Incorrect surname")
//    private String surname;
//
//    @Email(groups = ExcludeLogValidation.class, message = "Incorrect email")
//    private String email;
//
//    @UserBirthdayConstraint(groups = ExcludeLogValidation.class)
//    @NotNull(groups = ExcludeLogValidation.class)
//    private LocalDate birthday;
//
//    private String verifyPassword;
//}
