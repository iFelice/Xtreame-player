package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import com.google.android.gms.internal.ads.Ux;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class I1 extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f22939b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ I1(Object obj, int i8) {
        super(null);
        this.f22938a = i8;
        this.f22939b = obj;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z7) {
        switch (this.f22938a) {
            case 0:
                ((AtomicBoolean) ((Ux) this.f22939b).f16923f).set(true);
                return;
            default:
                M1 m7 = (M1) this.f22939b;
                synchronized (m7.f22965e) {
                    m7.f22966f = null;
                    m7.f22963c.run();
                    break;
                }
                synchronized (m7) {
                    try {
                        Iterator it = m7.f22967g.iterator();
                        if (it.hasNext()) {
                            A0.O.I(it.next());
                            throw null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
        }
    }
}
