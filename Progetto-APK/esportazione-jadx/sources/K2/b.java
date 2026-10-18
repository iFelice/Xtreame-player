package K2;

import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
import p132r.f;
import y2.B;
import y2.m;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final B f4463c = new B(Object.class, Object.class, Object.class, Collections.singletonList(new m(Object.class, Object.class, Object.class, Collections.emptyList(), new I2.d(), null)), null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4464a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f4465b = new AtomicReference();

    public final void a(Class cls, Class cls2, Class cls3, B b8) {
        synchronized (this.f4464a) {
            f fVar = this.f4464a;
            P2.m mVar = new P2.m(cls, cls2, cls3);
            if (b8 == null) {
                b8 = f4463c;
            }
            fVar.put(mVar, b8);
        }
    }
}
