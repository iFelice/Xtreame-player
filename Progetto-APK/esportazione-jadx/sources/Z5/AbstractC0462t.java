package Z5;

import Y5.AbstractC0417d;
import Y5.C0416c;
import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: renamed from: Z5.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0462t implements InterfaceC0457n {
    @Override // Z5.T
    public final Runnable a(S s7) {
        return f().a(s7);
    }

    @Override // Z5.T
    public void b(Y5.B b8) {
        f().b(b8);
    }

    @Override // Z5.InterfaceC0457n
    public final C0416c c() {
        return f().c();
    }

    @Override // Z5.T
    public void d(Y5.B b8) {
        f().d(b8);
    }

    @Override // Y5.l
    public final AbstractC0417d e() {
        return f().e();
    }

    public abstract InterfaceC0457n f();

    public final String toString() {
        p113o3.G gN = Cw.n(this);
        gN.a(f(), "delegate");
        return gN.toString();
    }
}
