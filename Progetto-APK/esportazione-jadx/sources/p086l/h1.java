package p086l;

import Y.E;
import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import p079k.m;
import p079k.o;

/* JADX INFO: loaded from: classes.dex */
public final class h1 implements InterfaceC3048q, m {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ Toolbar f26266G;

    public /* synthetic */ h1(Toolbar toolbar) {
        this.f26266G = toolbar;
    }

    @Override // p079k.m
    public final boolean g(o oVar, MenuItem menuItem) {
        this.f26266G.getClass();
        return false;
    }

    @Override // p079k.m
    public final void m(o oVar) {
        Toolbar toolbar = this.f26266G;
        C3042n c3042n = toolbar.f8893G.f8824c0;
        if (c3042n == null || !c3042n.j()) {
            Iterator it = ((CopyOnWriteArrayList) toolbar.f8925p0.f27279I).iterator();
            while (it.hasNext()) {
                ((E) it.next()).f7699a.s();
            }
        }
    }
}
