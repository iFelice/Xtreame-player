package p171w0;

import android.media.MediaCodec;
import android.os.Build;
import com.google.android.gms.internal.ads.Et;
import com.google.android.gms.internal.ads.SJ;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f30892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f30893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f30894c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f30895d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f30896e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f30897f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f30898g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f30899h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MediaCodec.CryptoInfo f30900i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f30901j;

    public c(int i8) {
        if (i8 != 1) {
            MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
            this.f30900i = cryptoInfo;
            this.f30901j = Build.VERSION.SDK_INT >= 24 ? new b(cryptoInfo) : null;
        } else {
            MediaCodec.CryptoInfo cryptoInfo2 = new MediaCodec.CryptoInfo();
            this.f30900i = cryptoInfo2;
            this.f30901j = Et.f13234a >= 24 ? new SJ(cryptoInfo2) : null;
        }
    }
}
