package pe.hf.black20.encryption;

import android.util.Base64;
import android.util.Log;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BackupEncrypt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f29247a;

    static {
        System.loadLibrary("native-lib");
        f29247a = ekivfj();
    }

    public static String a(String str, String str2) {
        byte[] bArr = new byte[16];
        Arrays.fill(bArr, (byte) 0);
        try {
            String str3 = f29247a;
            Charset charset = StandardCharsets.UTF_8;
            IvParameterSpec ivParameterSpec = new IvParameterSpec(str3.getBytes(charset));
            byte[] bytes = str2.getBytes(charset);
            System.arraycopy(bytes, 0, bArr, 0, bytes.length < 16 ? bytes.length : 16);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return new String(cipher.doFinal(Base64.decode(str, 0)));
        } catch (Exception e8) {
            e8.printStackTrace();
            Log.d("XCIPTV_TAG", "BackupEncrypt - Decrypt Exception------------------------");
            return null;
        }
    }

    public static native String ekivfj();
}
