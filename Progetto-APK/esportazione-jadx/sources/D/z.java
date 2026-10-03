package D;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import z4.C3261z;
import z4.N;
import z4.O;

/* JADX INFO: loaded from: classes.dex */
public final class z implements Iterable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1736G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Serializable f1737H = p190y4.a.f31418G;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f1738I;

    public z(Iterable[] iterableArr) {
        this.f1738I = iterableArr;
    }

    public final String b() {
        Iterator it = ((Iterable) ((p190y4.j) this.f1737H).c(this)).iterator();
        StringBuilder sb = new StringBuilder("[");
        boolean z7 = true;
        while (it.hasNext()) {
            if (!z7) {
                sb.append(", ");
            }
            sb.append(it.next());
            z7 = false;
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f1736G) {
            case 0:
                return ((ArrayList) this.f1737H).iterator();
            default:
                C3261z c3261z = new C3261z(this, ((Iterable[]) this.f1738I).length);
                O o4 = new O();
                o4.f31819H = N.f31816K;
                o4.f31820I = c3261z;
                return o4;
        }
    }

    public final /* bridge */ /* synthetic */ String toString() {
        switch (this.f1736G) {
            case 1:
                return b();
            default:
                return super.toString();
        }
    }
}
