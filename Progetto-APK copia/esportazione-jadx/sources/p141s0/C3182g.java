package p141s0;

import android.net.Uri;
import android.util.Base64;
import com.google.android.gms.internal.measurement.H1;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import p094m0.P;
import p117p0.M;
import p148t.a;

/* JADX INFO: renamed from: s0.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3182g extends AbstractC3178c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C3188m f29942e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f29943f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f29944g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f29945h;

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) throws P, C3185j {
        u();
        this.f29942e = c3188m;
        Uri uriNormalizeScheme = c3188m.f29963a.normalizeScheme();
        String scheme = uriNormalizeScheme.getScheme();
        H1.c("Unsupported scheme: " + scheme, "data".equals(scheme));
        String schemeSpecificPart = uriNormalizeScheme.getSchemeSpecificPart();
        String str = M.f28050a;
        String[] strArrSplit = schemeSpecificPart.split(",", -1);
        if (strArrSplit.length != 2) {
            throw new P("Unexpected URI format: " + uriNormalizeScheme, null, true, 0);
        }
        String str2 = strArrSplit[1];
        if (strArrSplit[0].contains(";base64")) {
            try {
                this.f29943f = Base64.decode(str2, 0);
            } catch (IllegalArgumentException e8) {
                throw new P(a.c("Error while parsing Base64 encoded string: ", str2), e8, true, 0);
            }
        } else {
            this.f29943f = URLDecoder.decode(str2, StandardCharsets.US_ASCII.name()).getBytes(StandardCharsets.UTF_8);
        }
        byte[] bArr = this.f29943f;
        long length = bArr.length;
        long j8 = c3188m.f29968f;
        if (j8 > length) {
            this.f29943f = null;
            throw new C3185j(2008);
        }
        int i8 = (int) j8;
        this.f29944g = i8;
        int length2 = bArr.length - i8;
        this.f29945h = length2;
        long j9 = c3188m.f29969g;
        if (j9 != -1) {
            this.f29945h = (int) Math.min(length2, j9);
        }
        v(c3188m);
        return j9 != -1 ? j9 : this.f29945h;
    }

    @Override // p141s0.InterfaceC3184i
    public final void close() {
        if (this.f29943f != null) {
            this.f29943f = null;
            t();
        }
        this.f29942e = null;
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        C3188m c3188m = this.f29942e;
        if (c3188m != null) {
            return c3188m.f29963a;
        }
        return null;
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) {
        if (i9 == 0) {
            return 0;
        }
        int i10 = this.f29945h;
        if (i10 == 0) {
            return -1;
        }
        int iMin = Math.min(i9, i10);
        byte[] bArr2 = this.f29943f;
        String str = M.f28050a;
        System.arraycopy(bArr2, this.f29944g, bArr, i8, iMin);
        this.f29944g += iMin;
        this.f29945h -= iMin;
        s(iMin);
        return iMin;
    }
}
