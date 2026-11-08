package p090l3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import p043f3.a;
import p043f3.n;
import p043f3.o;

/* JADX INFO: loaded from: classes.dex */
public final class J0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static J0 f26485c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f26486a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o f26487b = new o(-1, -1, null, new ArrayList(), n.DEFAULT);

    static {
        new HashSet(Arrays.asList(a.APP_OPEN_AD, a.INTERSTITIAL, a.REWARDED));
    }

    public J0() {
        new ArrayList();
    }

    public static J0 a() {
        J0 j8;
        synchronized (J0.class) {
            try {
                if (f26485c == null) {
                    f26485c = new J0();
                }
                j8 = f26485c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return j8;
    }
}
