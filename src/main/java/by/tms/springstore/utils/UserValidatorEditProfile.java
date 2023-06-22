package by.tms.springstore.utils;

import by.tms.springstore.domain.User;
import by.tms.springstore.dto.UserDto;
import by.tms.springstore.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import java.util.Optional;

@Component
@RequiredArgsConstructor
public class UserValidatorEditProfile implements Validator {

    private final UserService userService;

    @Override
    public boolean supports(Class<?> aClass) {
        return UserDto.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        UserDto checkUserFromForm = (UserDto) o;
        checkUserInFormByEmail(errors, checkUserFromForm);
    }

    private void checkUserInFormByEmail(Errors errors, UserDto checkUserFromForm) {
        Optional<User> user = userService.getVerifyUserByEmail(checkUserFromForm.getEmail());
        if (user.isPresent()) {
            User foundedUser = user.get();
            comparisonUsersById(errors, checkUserFromForm, foundedUser);
        }
    }
    private void comparisonUsersById(Errors errors, UserDto checkUserFromForm, User foundedUser) {
        if (!foundedUser.getId().equals(checkUserFromForm.getId())) {
            errors.rejectValue("email", "", "Пользователь с такой электронной почтой уже существует");
        }
    }
}