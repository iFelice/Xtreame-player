package p113o3;

import C2.C0091g;
import F.i;
import com.google.android.gms.internal.ads.AbstractC2118v3;
import com.google.android.gms.internal.ads.C2066u3;
import com.google.android.gms.internal.ads.C2222x3;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p039f.AbstractC2987b;
import p120p3.g;

/* JADX INFO: renamed from: o3.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3160s extends AbstractC2118v3 {

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final Object f27994S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final C3161t f27995T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final /* synthetic */ byte[] f27996U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final /* synthetic */ Map f27997V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final /* synthetic */ g f27998W;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3160s(int i8, String str, C3161t c3161t, i iVar, byte[] bArr, HashMap map, g gVar) {
        super(i8, str, iVar);
        this.f27996U = bArr;
        this.f27997V = map;
        this.f27998W = gVar;
        this.f27994S = new Object();
        this.f27995T = c3161t;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2118v3
    public final C2222x3 a(C2066u3 c2066u3) {
        String str;
        String str2;
        byte[] bArr = c2066u3.f21195b;
        try {
            Map map = c2066u3.f21196c;
            String str3 = "ISO-8859-1";
            if (map != null && (str2 = (String) map.get("Content-Type")) != null) {
                String[] strArrSplit = str2.split(";", 0);
                for (int i8 = 1; i8 < strArrSplit.length; i8++) {
                    String[] strArrSplit2 = strArrSplit[i8].trim().split("=", 0);
                    if (strArrSplit2.length == 2 && strArrSplit2[0].equals("charset")) {
                        str3 = strArrSplit2[1];
                        break;
                    }
                }
            }
            str = new String(bArr, str3);
        } catch (UnsupportedEncodingException unused) {
            str = new String(bArr);
        }
        return new C2222x3(str, AbstractC2987b.n0(c2066u3));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2118v3
    public final Map c() {
        Map map = this.f27997V;
        return map == null ? Collections.emptyMap() : map;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2118v3
    public final void e(Object obj) {
        C3161t c3161t;
        String str = (String) obj;
        g gVar = this.f27998W;
        gVar.getClass();
        if (g.c() && str != null) {
            gVar.d("onNetworkResponseBody", new C0091g(str.getBytes(), 8));
        }
        synchronized (this.f27994S) {
            c3161t = this.f27995T;
        }
        c3161t.b(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2118v3
    public final byte[] m() {
        byte[] bArr = this.f27996U;
        if (bArr == null) {
            return null;
        }
        return bArr;
    }
}
