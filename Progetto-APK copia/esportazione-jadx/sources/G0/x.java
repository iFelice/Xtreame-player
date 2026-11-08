package G0;

import android.os.Build;
import androidx.media3.decoder.CryptoConfig;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class x implements CryptoConfig {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f3384c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f3385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f3386b;

    /* JADX WARN: Code duplicated, block: B:9:0x001e  */
    static {
        boolean z7;
        if ("Amazon".equals(Build.MANUFACTURER)) {
            String str = Build.MODEL;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z7 = true;
            } else {
                z7 = false;
            }
        } else {
            z7 = false;
        }
        f3384c = z7;
    }

    public x(UUID uuid, byte[] bArr) {
        this.f3385a = uuid;
        this.f3386b = bArr;
    }
}
