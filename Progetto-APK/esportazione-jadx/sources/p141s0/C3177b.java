package p141s0;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p117p0.M;

/* JADX INFO: renamed from: s0.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3177b extends AbstractC3178c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetManager f29925e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Uri f29926f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public InputStream f29927g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f29928h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f29929i;

    public C3177b(Context context) {
        super(false);
        this.f29925e = context.getAssets();
    }

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) throws C3176a {
        try {
            Uri uri = c3188m.f29963a;
            long j8 = c3188m.f29968f;
            this.f29926f = uri;
            String path = uri.getPath();
            path.getClass();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith(MqttTopic.TOPIC_LEVEL_SEPARATOR)) {
                path = path.substring(1);
            }
            u();
            InputStream inputStreamOpen = this.f29925e.open(path, 1);
            this.f29927g = inputStreamOpen;
            if (inputStreamOpen.skip(j8) < j8) {
                throw new C3176a(2008, null);
            }
            long j9 = c3188m.f29969g;
            if (j9 != -1) {
                this.f29928h = j9;
            } else {
                long jAvailable = this.f29927g.available();
                this.f29928h = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.f29928h = -1L;
                }
            }
            this.f29929i = true;
            v(c3188m);
            return this.f29928h;
        } catch (C3176a e8) {
            throw e8;
        } catch (IOException e9) {
            throw new C3176a(e9 instanceof FileNotFoundException ? 2005 : 2000, e9);
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final void close() {
        this.f29926f = null;
        try {
            try {
                InputStream inputStream = this.f29927g;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f29927g = null;
                if (this.f29929i) {
                    this.f29929i = false;
                    t();
                }
            } catch (IOException e8) {
                throw new C3176a(2000, e8);
            }
        } catch (Throwable th) {
            this.f29927g = null;
            if (this.f29929i) {
                this.f29929i = false;
                t();
            }
            throw th;
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        return this.f29926f;
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) throws C3176a {
        if (i9 == 0) {
            return 0;
        }
        long j8 = this.f29928h;
        if (j8 == 0) {
            return -1;
        }
        if (j8 != -1) {
            try {
                i9 = (int) Math.min(j8, i9);
            } catch (IOException e8) {
                throw new C3176a(2000, e8);
            }
        }
        InputStream inputStream = this.f29927g;
        String str = M.f28050a;
        int i10 = inputStream.read(bArr, i8, i9);
        if (i10 == -1) {
            return -1;
        }
        long j9 = this.f29928h;
        if (j9 != -1) {
            this.f29928h = j9 - ((long) i10);
        }
        s(i10);
        return i10;
    }
}
