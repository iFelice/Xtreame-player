package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.paho.client.mqttv3.MqttTopic;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2269xz extends Nz {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetManager f21964e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Uri f21965f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public InputStream f21966g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f21967h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f21968i;

    public C2269xz(Context context) {
        super(false);
        this.f21964e = context.getAssets();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) throws C1750nz {
        try {
            Uri uri = cd.f12592a;
            long j8 = cd.f12594c;
            this.f21965f = uri;
            String path = uri.getPath();
            path.getClass();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith(MqttTopic.TOPIC_LEVEL_SEPARATOR)) {
                path = path.substring(1);
            }
            j(cd);
            InputStream inputStreamOpen = this.f21964e.open(path, 1);
            this.f21966g = inputStreamOpen;
            if (inputStreamOpen.skip(j8) < j8) {
                throw new C1750nz(2008, null);
            }
            long j9 = cd.f12595d;
            if (j9 != -1) {
                this.f21967h = j9;
            } else {
                long jAvailable = this.f21966g.available();
                this.f21967h = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.f21967h = -1L;
                }
            }
            this.f21968i = true;
            k(cd);
            return this.f21967h;
        } catch (C1750nz e8) {
            throw e8;
        } catch (IOException e9) {
            throw new C1750nz(true != (e9 instanceof FileNotFoundException) ? 2000 : 2005, e9);
        }
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) throws C1750nz {
        if (i9 == 0) {
            return 0;
        }
        long j8 = this.f21967h;
        if (j8 == 0) {
            return -1;
        }
        if (j8 != -1) {
            try {
                i9 = (int) Math.min(j8, i9);
            } catch (IOException e8) {
                throw new C1750nz(2000, e8);
            }
        }
        InputStream inputStream = this.f21966g;
        int i10 = Et.f13234a;
        int i11 = inputStream.read(bArr, i8, i9);
        if (i11 == -1) {
            return -1;
        }
        long j9 = this.f21967h;
        if (j9 != -1) {
            this.f21967h = j9 - ((long) i11);
        }
        zzg(i11);
        return i11;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        return this.f21965f;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() {
        this.f21965f = null;
        try {
            try {
                InputStream inputStream = this.f21966g;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f21966g = null;
                if (this.f21968i) {
                    this.f21968i = false;
                    i();
                }
            } catch (IOException e8) {
                throw new C1750nz(2000, e8);
            }
        } catch (Throwable th) {
            this.f21966g = null;
            if (this.f21968i) {
                this.f21968i = false;
                i();
            }
            throw th;
        }
    }
}
