package p015b6;

import Z5.C0447d;
import java.security.Provider;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0447d f9906d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0447d f9907e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0447d f9908f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C0447d f9909g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f9910h;

    public f(C0447d c0447d, C0447d c0447d2, C0447d c0447d3, C0447d c0447d4, Provider provider, int i8) {
        super(provider);
        this.f9906d = c0447d;
        this.f9907e = c0447d2;
        this.f9908f = c0447d3;
        this.f9909g = c0447d4;
        this.f9910h = i8;
    }

    @Override // p015b6.j
    public final void c(SSLSocket sSLSocket, String str, List list) {
        if (str != null) {
            this.f9906d.d(new Object[]{Boolean.TRUE}, sSLSocket);
            this.f9907e.d(new Object[]{str}, sSLSocket);
        }
        C0447d c0447d = this.f9909g;
        c0447d.getClass();
        if (c0447d.a(sSLSocket.getClass()) != null) {
            c0447d.e(new Object[]{j.b(list)}, sSLSocket);
        }
    }

    @Override // p015b6.j
    public final String d(SSLSocket sSLSocket) {
        byte[] bArr;
        C0447d c0447d = this.f9908f;
        c0447d.getClass();
        if ((c0447d.a(sSLSocket.getClass()) != null) && (bArr = (byte[]) c0447d.e(new Object[0], sSLSocket)) != null) {
            return new String(bArr, m.f9938b);
        }
        return null;
    }

    @Override // p015b6.j
    public final int e() {
        return this.f9910h;
    }
}
