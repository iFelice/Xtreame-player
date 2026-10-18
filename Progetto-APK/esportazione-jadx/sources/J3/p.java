package J3;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.F;
import com.google.android.gms.common.internal.a0;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class p extends a0 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f4163I;

    public p(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData", 1);
        com.bumptech.glide.c.b(bArr.length == 25);
        this.f4163I = Arrays.hashCode(bArr);
    }

    public static byte[] j0(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e8) {
            throw new AssertionError(e8);
        }
    }

    public final boolean equals(Object obj) {
        R3.a aVarZzd;
        if (obj != null && (obj instanceof F)) {
            try {
                F f8 = (F) obj;
                if (f8.zzc() == this.f4163I && (aVarZzd = f8.zzd()) != null) {
                    return Arrays.equals(v0(), (byte[]) R3.b.v0(aVarZzd));
                }
                return false;
            } catch (RemoteException e8) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e8);
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f4163I;
    }

    public abstract byte[] v0();

    @Override // com.google.android.gms.common.internal.F
    public final int zzc() {
        return this.f4163I;
    }

    @Override // com.google.android.gms.common.internal.F
    public final R3.a zzd() {
        return new R3.b(v0());
    }
}
