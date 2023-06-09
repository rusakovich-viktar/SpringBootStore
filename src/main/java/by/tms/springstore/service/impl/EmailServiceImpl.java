package by.tms.springstore.service.impl;

import static by.tms.springstore.utils.Constants.Attributes.SUPPORT_SUBJECT;

import by.tms.springstore.dto.UserDtoFromContactForm;
import by.tms.springstore.service.EmailService;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import java.util.concurrent.CompletableFuture;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.internal.bytebuddy.utility.RandomString;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class EmailServiceImpl implements EmailService {

    private final JavaMailSender javaMailSender;
    @Value("${spring.mail.username}")
    private String supportEmail;
//    @Value("${custom.support.email}")
//    private String supportEmail;

    public void send(String emailTo, String subject, String text) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(supportEmail);
        message.setTo(emailTo);
        message.setSubject(subject);
        message.setText(text);
        javaMailSender.send(message);
    }

    @Override
    public void sendContactForm(UserDtoFromContactForm userDtoFromContactForm) {
        CompletableFuture.runAsync(() -> {
            MimeMessage message = javaMailSender.createMimeMessage();
            MimeMessageHelper mailMessage = new MimeMessageHelper(message);
            try {
                mailMessage.setFrom(supportEmail);
                mailMessage.setTo(supportEmail);
                mailMessage.setSubject(SUPPORT_SUBJECT);
                mailMessage.setText("Email пользователя: <b>" + userDtoFromContactForm.getEmail() + "</b><br>"
                        + "Номер телефона: " + userDtoFromContactForm.getPhone() + "<br><br>"
                        + "<b>Текст сообщения: </b>" + userDtoFromContactForm.getMessage(), true);
            } catch (MessagingException e) {
                log.error("sendContactFormException", e);
            }
            javaMailSender.send(message);
        });
    }

    @Override
    public String sendPasswordReset(String userEmail) {
        String newPassword = RandomString.make(8);

        CompletableFuture.runAsync(() -> {
            MimeMessage message = javaMailSender.createMimeMessage();
            MimeMessageHelper mailMessage = new MimeMessageHelper(message);
            try {
                mailMessage.setFrom(supportEmail);
                mailMessage.setTo(userEmail);
                mailMessage.setSubject("Сброс пароля");
                mailMessage.setText("<h2>Здравствуйте!</h2>"
                        + "<p>Ваш новый пароль для доступа к OWLstore: <b>" + newPassword + "</b><br><br>"
                        + "<h4>После входа в аккаунт рекомендуем изменить пароль в личном кабинете.</h4>"
                        + "Если вы считаете, что данное сообщение отправлено вам по ошибке, проигнорируйте его.</p>", true);
            } catch (MessagingException e) {
                log.error("sendPasswordResetException", e);
            }
            javaMailSender.send(message);
        });
        return newPassword;
    }
}
