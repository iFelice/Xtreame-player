package p164v0;

import android.net.Uri;
import io.antmedia.rtmp_client.RtmpClient;
import p094m0.J;
import p117p0.M;
import p141s0.AbstractC3178c;
import p141s0.C3188m;
import p173w2.d;

/* JADX INFO: loaded from: classes.dex */
public final class a extends AbstractC3178c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f30546g = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RtmpClient f30547e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Uri f30548f;

    static {
        J.a("media3.datasource.rtmp");
    }

    public a() {
        super(true);
    }

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) throws d {
        u();
        RtmpClient rtmpClient = new RtmpClient();
        rtmpClient.f25593a = 0L;
        this.f30547e = rtmpClient;
        rtmpClient.b(c3188m.f29963a.toString());
        this.f30548f = c3188m.f29963a;
        v(c3188m);
        return -1L;
    }

    @Override // p141s0.InterfaceC3184i
    public final void close() {
        if (this.f30548f != null) {
            this.f30548f = null;
            t();
        }
        RtmpClient rtmpClient = this.f30547e;
        if (rtmpClient != null) {
            rtmpClient.a();
            this.f30547e = null;
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        return this.f30548f;
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) throws d {
        RtmpClient rtmpClient = this.f30547e;
        String str = M.f28050a;
        int iC = rtmpClient.c(bArr, i8, i9);
        if (iC == -1) {
            return -1;
        }
        s(iC);
        return iC;
    }
}
