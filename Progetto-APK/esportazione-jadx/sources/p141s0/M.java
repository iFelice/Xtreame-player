package p141s0;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class M implements InterfaceC3184i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC3184i f29908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f29909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Uri f29910c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Map f29911d;

    public M(InterfaceC3184i interfaceC3184i) {
        interfaceC3184i.getClass();
        this.f29908a = interfaceC3184i;
        this.f29910c = Uri.EMPTY;
        this.f29911d = Collections.emptyMap();
    }

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) {
        InterfaceC3184i interfaceC3184i = this.f29908a;
        this.f29910c = c3188m.f29963a;
        this.f29911d = Collections.emptyMap();
        try {
            return interfaceC3184i.a(c3188m);
        } finally {
            Uri uri = interfaceC3184i.getUri();
            if (uri != null) {
                this.f29910c = uri;
            }
            this.f29911d = interfaceC3184i.k();
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final void close() {
        this.f29908a.close();
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        return this.f29908a.getUri();
    }

    @Override // p141s0.InterfaceC3184i
    public final Map k() {
        return this.f29908a.k();
    }

    @Override // p141s0.InterfaceC3184i
    public final void p(O o4) {
        o4.getClass();
        this.f29908a.p(o4);
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) {
        int iQ = this.f29908a.q(bArr, i8, i9);
        if (iQ != -1) {
            this.f29909b += (long) iQ;
        }
        return iQ;
    }
}
