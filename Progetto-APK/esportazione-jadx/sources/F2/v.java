package F2;

import android.os.Build;
import android.util.Log;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class v {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f3167e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final boolean f3168f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final File f3169g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile v f3170h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3172b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3173c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f3174d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3171a = 20000;

    static {
        int i8 = Build.VERSION.SDK_INT;
        f3167e = i8 < 29;
        f3168f = i8 >= 28;
        f3169g = new File("/proc/self/fd");
    }

    public static v a() {
        if (f3170h == null) {
            synchronized (v.class) {
                try {
                    if (f3170h == null) {
                        f3170h = new v();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f3170h;
    }

    public final int b() {
        if (Build.VERSION.SDK_INT == 28) {
            Iterator it = Arrays.asList("GM1900", "GM1901", "GM1903", "GM1911", "GM1915", "ONEPLUS A3000", "ONEPLUS A3010", "ONEPLUS A5010", "ONEPLUS A5000", "ONEPLUS A3003", "ONEPLUS A6000", "ONEPLUS A6003", "ONEPLUS A6010", "ONEPLUS A6013").iterator();
            while (it.hasNext()) {
                if (Build.MODEL.startsWith((String) it.next())) {
                    return 500;
                }
            }
        }
        return this.f3171a;
    }

    public final boolean c(int i8, int i9, boolean z7, boolean z8) {
        boolean z9;
        if (!z7) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by caller");
            }
            return false;
        }
        if (!f3168f) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by sdk");
            }
            return false;
        }
        if (f3167e && !this.f3174d.get()) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by app state");
            }
            return false;
        }
        if (z8) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed because exif orientation is required");
            }
            return false;
        }
        if (i8 < 0 || i9 < 0) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed because of invalid dimensions");
            }
            return false;
        }
        synchronized (this) {
            try {
                int i10 = this.f3172b + 1;
                this.f3172b = i10;
                if (i10 >= 50) {
                    this.f3172b = 0;
                    int length = f3169g.list().length;
                    long jB = b();
                    boolean z10 = ((long) length) < jB;
                    this.f3173c = z10;
                    if (!z10 && Log.isLoggable("Downsampler", 5)) {
                        Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + jB);
                    }
                }
                z9 = this.f3173c;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z9) {
            return true;
        }
        if (Log.isLoggable("HardwareConfig", 2)) {
            Log.v("HardwareConfig", "Hardware config disallowed because there are insufficient FDs");
        }
        return false;
    }
}
