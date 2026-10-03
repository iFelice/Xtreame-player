package com.google.protobuf;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class O0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile O0 f24283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final O0 f24284c = new O0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f24285a = Collections.emptyMap();

    public static O0 b() {
        O0 o4 = f24283b;
        if (o4 == null) {
            synchronized (O0.class) {
                try {
                    o4 = f24283b;
                    if (o4 == null) {
                        Class cls = M0.f24270a;
                        O0 o7 = null;
                        if (cls != null) {
                            try {
                                o7 = (O0) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
                            } catch (Exception unused) {
                            }
                        }
                        if (o7 == null) {
                            o7 = f24284c;
                        }
                        f24283b = o7;
                        o4 = o7;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return o4;
    }

    public final C2901g1 a(int i8, Q1 q7) {
        return (C2901g1) this.f24285a.get(new N0(q7, i8));
    }
}
