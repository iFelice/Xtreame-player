package p141s0;

import android.net.Uri;
import com.google.android.gms.internal.measurement.H1;
import java.util.Collections;
import java.util.Map;
import z4.i0;

/* JADX INFO: renamed from: s0.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3187l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Uri f29953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f29954b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f29956d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f29958f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f29960h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f29961i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Object f29962j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f29955c = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map f29957e = Collections.emptyMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f29959g = -1;

    public final C3188m a() {
        H1.k(this.f29953a, "The uri must be set.");
        return new C3188m(this.f29953a, this.f29954b, this.f29955c, this.f29956d, this.f29957e, this.f29958f, this.f29959g, this.f29960h, this.f29961i, this.f29962j);
    }

    public final void b(int i8) {
        this.f29961i = i8;
    }

    public final void c() {
        this.f29957e = i0.f31862M;
    }

    public final void d(String str) {
        this.f29960h = str;
    }
}
