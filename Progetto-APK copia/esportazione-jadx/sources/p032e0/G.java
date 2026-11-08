package p032e0;

import U4.b;
import java.util.Map;
import java.util.Set;
import p048g0.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class G {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f24727a = new a();

    public final void a() {
        a aVar = this.f24727a;
        if (aVar != null && !aVar.f25292a) {
            aVar.f25292a = true;
            synchronized (((b) aVar.f25293b)) {
                try {
                    for (AutoCloseable autoCloseable : ((Map) aVar.f25294c).values()) {
                        if (autoCloseable != null) {
                            try {
                                autoCloseable.close();
                            } catch (Exception e8) {
                                throw new RuntimeException(e8);
                            }
                        }
                    }
                    for (AutoCloseable autoCloseable2 : (Set) aVar.f25295d) {
                        if (autoCloseable2 != null) {
                            try {
                                autoCloseable2.close();
                            } catch (Exception e9) {
                                throw new RuntimeException(e9);
                            }
                        }
                    }
                    ((Set) aVar.f25295d).clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        b();
    }

    public void b() {
    }
}
