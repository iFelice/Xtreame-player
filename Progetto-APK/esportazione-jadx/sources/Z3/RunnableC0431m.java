package Z3;

import C2.C0091g;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: Z3.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0431m implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8366G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f8367H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f8368I;

    public /* synthetic */ RunnableC0431m(int i8, Object obj, Object obj2) {
        this.f8366G = i8;
        this.f8367H = obj;
        this.f8368I = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zBooleanValue;
        switch (this.f8366G) {
            case 0:
                C0434p c0434p = (C0434p) this.f8367H;
                C0430l c0430l = (C0430l) this.f8368I;
                AtomicReference atomicReference = c0434p.f8376d;
                Objects.requireNonNull(atomicReference);
                c0430l.a(new C0091g(atomicReference, 29), new S3.g(11));
                return;
            default:
                C0436s c0436s = (C0436s) this.f8367H;
                String str = (String) this.f8368I;
                synchronized (H.class) {
                    if (H.f8256a == null) {
                        try {
                            c0436s.evaluateJavascript("(function(){})()", null);
                            H.f8256a = Boolean.TRUE;
                        } catch (IllegalStateException unused) {
                            H.f8256a = Boolean.FALSE;
                        }
                        zBooleanValue = H.f8256a.booleanValue();
                        break;
                    } else {
                        zBooleanValue = H.f8256a.booleanValue();
                        break;
                    }
                    throw th;
                }
                if (zBooleanValue) {
                    c0436s.evaluateJavascript(str, null);
                    return;
                } else {
                    c0436s.loadUrl("javascript:".concat(str));
                    return;
                }
        }
    }
}
