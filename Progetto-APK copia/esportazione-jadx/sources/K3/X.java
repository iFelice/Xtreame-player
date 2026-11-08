package K3;

import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.HE;
import com.google.android.gms.internal.ads.HG;
import com.google.android.gms.internal.ads.LD;
import com.google.android.gms.internal.ads.TD;
import com.google.android.gms.internal.pal.J6;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.Security;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes.dex */
public final class X extends ThreadLocal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4523a;

    public X() {
        this.f4523a = 2;
    }

    /* JADX WARN: Code duplicated, block: B:119:0x00e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00ed  */
    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        Provider provider;
        SecureRandom secureRandom;
        Provider provider2 = null;
        switch (this.f4523a) {
            case 0:
                return Boolean.FALSE;
            case 1:
                return 0L;
            case 2:
                return ByteBuffer.allocate(32);
            case 3:
                try {
                    return (Cipher) HG.f13734b.a("AES/GCM/NoPadding");
                } catch (GeneralSecurityException e8) {
                    throw new IllegalStateException(e8);
                }
            case 4:
                try {
                    Cipher cipher = (Cipher) HG.f13734b.a("ChaCha20-Poly1305");
                    if (LD.a(cipher)) {
                        return cipher;
                    }
                    return null;
                } catch (GeneralSecurityException unused) {
                    return null;
                }
            case 5:
                try {
                    Cipher cipher2 = (Cipher) HG.f13734b.a("AES/GCM-SIV/NoPadding");
                    if (TD.a(cipher2)) {
                        return cipher2;
                    }
                    return null;
                } catch (GeneralSecurityException e9) {
                    throw new IllegalStateException(e9);
                }
            case 6:
                X x7 = HE.f13733a;
                String[] strArr = Cw.f12722f;
                int i8 = 0;
                while (true) {
                    if (i8 < 3) {
                        provider = Security.getProvider(strArr[i8]);
                        if (provider == null) {
                            i8++;
                        }
                    } else {
                        provider = null;
                    }
                }
                if (provider == null) {
                    provider2 = (Provider) Class.forName("org.conscrypt.Conscrypt").getMethod("newProvider", new Class[0]).invoke(null, new Object[0]);
                    if (provider2 != null) {
                        secureRandom = SecureRandom.getInstance("SHA1PRNG", provider2);
                    } else {
                        secureRandom = new SecureRandom();
                    }
                    break;
                } else {
                    try {
                        secureRandom = SecureRandom.getInstance("SHA1PRNG", provider);
                    } catch (GeneralSecurityException unused2) {
                        try {
                            provider2 = (Provider) Class.forName("org.conscrypt.Conscrypt").getMethod("newProvider", new Class[0]).invoke(null, new Object[0]);
                        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException unused3) {
                        }
                        if (provider2 != null) {
                            try {
                                secureRandom = SecureRandom.getInstance("SHA1PRNG", provider2);
                            } catch (GeneralSecurityException unused4) {
                                secureRandom = new SecureRandom();
                            }
                        } else {
                            secureRandom = new SecureRandom();
                        }
                    }
                    break;
                }
                secureRandom.nextLong();
                return secureRandom;
            case 7:
                try {
                    return (Cipher) HG.f13734b.a("AES/CTR/NoPadding");
                } catch (GeneralSecurityException e10) {
                    throw new IllegalStateException(e10);
                }
            case 8:
                try {
                    return (Cipher) HG.f13734b.a("AES/ECB/NOPADDING");
                } catch (GeneralSecurityException e11) {
                    throw new IllegalStateException(e11);
                }
            case 9:
                try {
                    return (Cipher) HG.f13734b.a("AES/CTR/NOPADDING");
                } catch (GeneralSecurityException e12) {
                    throw new IllegalStateException(e12);
                }
            case 10:
                try {
                    return (Cipher) HG.f13734b.a("AES/ECB/NoPadding");
                } catch (GeneralSecurityException e13) {
                    throw new IllegalStateException(e13);
                }
            case 11:
                return Boolean.TRUE;
            case 12:
                try {
                    return (Cipher) J6.f23569e.a("AES/GCM/NoPadding");
                } catch (GeneralSecurityException e14) {
                    throw new IllegalStateException(e14);
                }
            case 13:
                try {
                    return (Cipher) J6.f23569e.a("AES/GCM-SIV/NoPadding");
                } catch (GeneralSecurityException e15) {
                    throw new IllegalStateException(e15);
                }
            case 14:
                try {
                    return (Cipher) J6.f23569e.a("AES/CTR/NoPadding");
                } catch (GeneralSecurityException e16) {
                    throw new IllegalStateException(e16);
                }
            case 15:
                try {
                    return (Cipher) J6.f23569e.a("AES/ECB/NOPADDING");
                } catch (GeneralSecurityException e17) {
                    throw new IllegalStateException(e17);
                }
            case 16:
                try {
                    return (Cipher) J6.f23569e.a("AES/CTR/NOPADDING");
                } catch (GeneralSecurityException e18) {
                    throw new IllegalStateException(e18);
                }
            default:
                SecureRandom secureRandom2 = new SecureRandom();
                secureRandom2.nextLong();
                return secureRandom2;
        }
    }

    public /* synthetic */ X(int i8) {
        this.f4523a = i8;
    }
}
