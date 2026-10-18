package p141s0;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import p117p0.M;
import p117p0.x;
import p164v0.a;

/* JADX INFO: renamed from: s0.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3190o implements InterfaceC3184i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f29975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f29976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InterfaceC3184i f29977c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public v f29978d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C3177b f29979e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C3181f f29980f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public InterfaceC3184i f29981g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Q f29982h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public C3182g f29983i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public L f29984j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InterfaceC3184i f29985k;

    public C3190o(Context context, InterfaceC3184i interfaceC3184i) {
        this.f29975a = context.getApplicationContext();
        interfaceC3184i.getClass();
        this.f29977c = interfaceC3184i;
        this.f29976b = new ArrayList();
    }

    public static void t(InterfaceC3184i interfaceC3184i, O o4) {
        if (interfaceC3184i != null) {
            interfaceC3184i.p(o4);
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) {
        H1.i(this.f29985k == null);
        String scheme = c3188m.f29963a.getScheme();
        String str = M.f28050a;
        Uri uri = c3188m.f29963a;
        String scheme2 = uri.getScheme();
        boolean zIsEmpty = TextUtils.isEmpty(scheme2);
        Context context = this.f29975a;
        if (zIsEmpty || Objects.equals(scheme2, "file")) {
            String path = uri.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.f29978d == null) {
                    v vVar = new v(false);
                    this.f29978d = vVar;
                    s(vVar);
                }
                this.f29985k = this.f29978d;
            } else {
                if (this.f29979e == null) {
                    C3177b c3177b = new C3177b(context);
                    this.f29979e = c3177b;
                    s(c3177b);
                }
                this.f29985k = this.f29979e;
            }
        } else if ("asset".equals(scheme)) {
            if (this.f29979e == null) {
                C3177b c3177b2 = new C3177b(context);
                this.f29979e = c3177b2;
                s(c3177b2);
            }
            this.f29985k = this.f29979e;
        } else if ("content".equals(scheme)) {
            if (this.f29980f == null) {
                C3181f c3181f = new C3181f(context);
                this.f29980f = c3181f;
                s(c3181f);
            }
            this.f29985k = this.f29980f;
        } else {
            boolean zEquals = "rtmp".equals(scheme);
            InterfaceC3184i interfaceC3184i = this.f29977c;
            if (zEquals) {
                if (this.f29981g == null) {
                    try {
                        int i8 = a.f30546g;
                        InterfaceC3184i interfaceC3184i2 = (InterfaceC3184i) a.class.getConstructor(new Class[0]).newInstance(new Object[0]);
                        this.f29981g = interfaceC3184i2;
                        s(interfaceC3184i2);
                    } catch (ClassNotFoundException unused) {
                        x.f("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                    } catch (Exception e8) {
                        throw new RuntimeException("Error instantiating RTMP extension", e8);
                    }
                    if (this.f29981g == null) {
                        this.f29981g = interfaceC3184i;
                    }
                }
                this.f29985k = this.f29981g;
            } else if ("udp".equals(scheme)) {
                if (this.f29982h == null) {
                    Q q7 = new Q();
                    this.f29982h = q7;
                    s(q7);
                }
                this.f29985k = this.f29982h;
            } else if ("data".equals(scheme)) {
                if (this.f29983i == null) {
                    C3182g c3182g = new C3182g(false);
                    this.f29983i = c3182g;
                    s(c3182g);
                }
                this.f29985k = this.f29983i;
            } else if ("rawresource".equals(scheme) || "android.resource".equals(scheme)) {
                if (this.f29984j == null) {
                    L l4 = new L(context);
                    this.f29984j = l4;
                    s(l4);
                }
                this.f29985k = this.f29984j;
            } else {
                this.f29985k = interfaceC3184i;
            }
        }
        return this.f29985k.a(c3188m);
    }

    @Override // p141s0.InterfaceC3184i
    public final void close() {
        InterfaceC3184i interfaceC3184i = this.f29985k;
        if (interfaceC3184i != null) {
            try {
                interfaceC3184i.close();
            } finally {
                this.f29985k = null;
            }
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        InterfaceC3184i interfaceC3184i = this.f29985k;
        if (interfaceC3184i == null) {
            return null;
        }
        return interfaceC3184i.getUri();
    }

    @Override // p141s0.InterfaceC3184i
    public final Map k() {
        InterfaceC3184i interfaceC3184i = this.f29985k;
        return interfaceC3184i == null ? Collections.emptyMap() : interfaceC3184i.k();
    }

    @Override // p141s0.InterfaceC3184i
    public final void p(O o4) {
        o4.getClass();
        this.f29977c.p(o4);
        this.f29976b.add(o4);
        t(this.f29978d, o4);
        t(this.f29979e, o4);
        t(this.f29980f, o4);
        t(this.f29981g, o4);
        t(this.f29982h, o4);
        t(this.f29983i, o4);
        t(this.f29984j, o4);
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) {
        InterfaceC3184i interfaceC3184i = this.f29985k;
        interfaceC3184i.getClass();
        return interfaceC3184i.q(bArr, i8, i9);
    }

    public final void s(InterfaceC3184i interfaceC3184i) {
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f29976b;
            if (i8 >= arrayList.size()) {
                return;
            }
            interfaceC3184i.p((O) arrayList.get(i8));
            i8++;
        }
    }
}
