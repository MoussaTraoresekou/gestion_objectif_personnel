package util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

public class MotDePasseUtil {
	
	 public static String hashPassword(String password) {
	        try {
	            MessageDigest digest = MessageDigest.getInstance("SHA-256");
	            byte[] hash = digest.digest(password.getBytes(StandardCharsets.UTF_8));

	            StringBuilder hex = new StringBuilder();

	            for (byte b : hash) {
	                hex.append(String.format("%02x", b));
	            }

	            return hex.toString();

	        } catch (Exception e) {
	            throw new RuntimeException("Erreur hash mot de passe");
	        }
	    }

}
