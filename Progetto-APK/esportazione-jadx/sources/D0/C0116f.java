package D0;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import com.google.android.gms.internal.measurement.H1;
import java.util.Objects;
import p094m0.C3121d;

/* JADX INFO: renamed from: D0.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0116f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final E f1926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f1927c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final B0.r f1928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p039f.G f1929e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0115e f1930f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C0114d f1931g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public p039f.S f1932h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public C3121d f1933i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1934j;

    public C0116f(Context context, E e8, C3121d c3121d, p039f.S s7) {
        Context applicationContext = context.getApplicationContext();
        this.f1925a = applicationContext;
        this.f1926b = e8;
        this.f1933i = c3121d;
        this.f1932h = s7;
        String str = p117p0.M.f28050a;
        Looper looperMyLooper = Looper.myLooper();
        Handler handler = new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper, null);
        this.f1927c = handler;
        this.f1928d = Build.VERSION.SDK_INT >= 23 ? new B0.r(this) : null;
        this.f1929e = new p039f.G(this);
        C0114d c0114d = C0114d.f1916c;
        String str2 = Build.MANUFACTURER;
        Uri uriFor = (str2.equals("Amazon") || str2.equals("Xiaomi")) ? Settings.Global.getUriFor("external_surround_sound_enabled") : null;
        this.f1930f = uriFor != null ? new C0115e(this, handler, applicationContext.getContentResolver(), uriFor, 0) : null;
    }

    public final void a(C0114d c0114d) {
        if (!this.f1934j || c0114d.equals(this.f1931g)) {
            return;
        }
        this.f1931g = c0114d;
        S s7 = this.f1926b.f1748a;
        s7.getClass();
        Looper looperMyLooper = Looper.myLooper();
        boolean z7 = s7.f1838j0 == looperMyLooper;
        StringBuilder sb = new StringBuilder("Current looper (");
        sb.append(looperMyLooper == null ? "null" : looperMyLooper.getThread().getName());
        sb.append(") is not the playback looper (");
        Looper looper = s7.f1838j0;
        sb.append(looper != null ? looper.getThread().getName() : "null");
        sb.append(")");
        H1.h(sb.toString(), z7);
        C0114d c0114d2 = s7.f1859z;
        if (c0114d2 == null || c0114d.equals(c0114d2)) {
            return;
        }
        s7.f1859z = c0114d;
        InterfaceC0128s interfaceC0128s = s7.f1854u;
        if (interfaceC0128s != null) {
            interfaceC0128s.v();
        }
    }

    public final void b(AudioDeviceInfo audioDeviceInfo) {
        p039f.S s7 = this.f1932h;
        if (Objects.equals(audioDeviceInfo, s7 == null ? null : (AudioDeviceInfo) s7.f24988H)) {
            return;
        }
        p039f.S s8 = audioDeviceInfo != null ? new p039f.S(audioDeviceInfo, 28) : null;
        this.f1932h = s8;
        a(C0114d.c(this.f1925a, this.f1933i, s8));
    }
}
