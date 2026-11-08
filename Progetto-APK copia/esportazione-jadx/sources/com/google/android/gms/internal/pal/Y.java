package com.google.android.gms.internal.pal;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Y {
    public static final void a(Object obj, Object obj2) {
        W w7 = (W) obj;
        A0.O.I(obj2);
        if (w7.isEmpty()) {
            return;
        }
        Iterator it = w7.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw null;
        }
    }

    public static final boolean b(Object obj) {
        return !((W) obj).f23680G;
    }

    public static final W c(Object obj, Object obj2) {
        W wB = (W) obj;
        W w7 = (W) obj2;
        if (!w7.isEmpty()) {
            if (!wB.f23680G) {
                wB = wB.b();
            }
            wB.d();
            if (!w7.isEmpty()) {
                wB.putAll(w7);
            }
        }
        return wB;
    }
}
