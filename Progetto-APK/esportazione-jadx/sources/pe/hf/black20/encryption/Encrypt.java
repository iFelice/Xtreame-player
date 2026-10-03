package pe.hf.black20.encryption;

import android.util.Base64;
import android.util.Log;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Encrypt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f29248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f29249b;

    static {
        System.loadLibrary("native-lib");
        f29248a = ekfj();
        f29249b = ekivfj();
        ekpfj();
        ekivpfj();
    }

    public static String a(String str) {
        try {
            String str2 = f29249b;
            Charset charset = StandardCharsets.UTF_8;
            IvParameterSpec ivParameterSpec = new IvParameterSpec(str2.getBytes(charset));
            SecretKeySpec secretKeySpec = new SecretKeySpec(f29248a.getBytes(charset), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return new String(cipher.doFinal(Base64.decode(str, 0)));
        } catch (Exception unused) {
            Log.d("XCIPTV_TAG", "Decrypt Exception------------------------");
            return null;
        }
    }

    public static String b(String str) {
        try {
            String str2 = f29249b;
            Charset charset = StandardCharsets.UTF_8;
            IvParameterSpec ivParameterSpec = new IvParameterSpec(str2.getBytes(charset));
            SecretKeySpec secretKeySpec = new SecretKeySpec(f29248a.getBytes(charset), "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return Base64.encodeToString(cipher.doFinal(str.getBytes()), 0);
        } catch (Exception unused) {
            Log.d("XCIPTV_TAG", "Encrypt Exception------------------------");
            return null;
        }
    }

    public static native String ekfj();

    public static native String ekivfj();

    private static native String ekivpfj();

    private static native String ekpfj();
}
