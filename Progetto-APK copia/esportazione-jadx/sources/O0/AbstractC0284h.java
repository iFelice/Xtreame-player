package O0;

import android.os.Handler;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: renamed from: O0.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0284h extends AbstractC0277a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap f5210h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Handler f5211i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public p141s0.O f5212j;

    @Override // O0.AbstractC0277a
    public final void d() {
        for (C0283g c0283g : this.f5210h.values()) {
            c0283g.f5207a.c(c0283g.f5208b);
        }
    }

    @Override // O0.AbstractC0277a
    public final void f() {
        for (C0283g c0283g : this.f5210h.values()) {
            c0283g.f5207a.e(c0283g.f5208b);
        }
    }

    @Override // O0.AbstractC0277a
    public final void j() {
        Iterator it = this.f5210h.values().iterator();
        while (it.hasNext()) {
            ((C0283g) it.next()).f5207a.j();
        }
    }
}
