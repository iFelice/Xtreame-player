package p094m0;

import U4.b;
import android.net.Uri;
import java.util.Collections;
import java.util.List;
import okhttp3.HttpUrl;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: renamed from: m0.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3140x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f27066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Uri f27067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f27068c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final A f27069d = new A(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f27070e = Collections.emptyList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final d0 f27071f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f27072g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C f27073h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final F f27074i;

    public C3140x() {
        F f8 = H.f31804H;
        this.f27071f = d0.f31844K;
        this.f27073h = new C();
        this.f27074i = F.f26683d;
        this.f27072g = -9223372036854775807L;
    }

    public final I a() {
        E e8;
        A a8 = this.f27069d;
        a8.getClass();
        Uri uri = this.f27067b;
        if (uri != null) {
            a8.getClass();
            e8 = new E(uri, null, this.f27070e, this.f27071f, this.f27072g);
        } else {
            e8 = null;
        }
        String str = this.f27066a;
        if (str == null) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        String str2 = str;
        b bVar = this.f27068c;
        bVar.getClass();
        C3142z c3142z = new C3142z(bVar);
        C c8 = this.f27073h;
        c8.getClass();
        return new I(str2, c3142z, e8, new D(c8), L.f26742I, this.f27074i);
    }
}
