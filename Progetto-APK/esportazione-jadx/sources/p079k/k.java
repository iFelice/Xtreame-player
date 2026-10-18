package p079k;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;
import p039f.C2992g;
import p039f.C2996k;
import p039f.DialogInterfaceC2997l;

/* JADX INFO: loaded from: classes.dex */
public final class k implements A, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Context f25808G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public LayoutInflater f25809H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public o f25810I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ExpandedMenuView f25811J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public z f25812K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public j f25813L;

    public k(Context context) {
        this.f25808G = context;
        this.f25809H = LayoutInflater.from(context);
    }

    @Override // p079k.A
    public final boolean b(q qVar) {
        return false;
    }

    @Override // p079k.A
    public final boolean c(G g8) {
        if (!g8.hasVisibleItems()) {
            return false;
        }
        p pVar = new p();
        pVar.f25845G = g8;
        Context context = g8.f25821a;
        C2996k c2996k = new C2996k(context);
        k kVar = new k(c2996k.getContext());
        pVar.f25847I = kVar;
        kVar.f25812K = pVar;
        g8.b(kVar, context);
        k kVar2 = pVar.f25847I;
        if (kVar2.f25813L == null) {
            kVar2.f25813L = new j(kVar2);
        }
        j jVar = kVar2.f25813L;
        C2992g c2992g = c2996k.f25100a;
        c2992g.f25056k = jVar;
        c2992g.f25057l = pVar;
        View view = g8.f25835o;
        if (view != null) {
            c2992g.f25050e = view;
        } else {
            c2992g.f25048c = g8.f25834n;
            c2996k.setTitle(g8.f25833m);
        }
        c2992g.f25055j = pVar;
        DialogInterfaceC2997l dialogInterfaceC2997lCreate = c2996k.create();
        pVar.f25846H = dialogInterfaceC2997lCreate;
        dialogInterfaceC2997lCreate.setOnDismissListener(pVar);
        WindowManager.LayoutParams attributes = pVar.f25846H.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        pVar.f25846H.show();
        z zVar = this.f25812K;
        if (zVar == null) {
            return true;
        }
        zVar.o(g8);
        return true;
    }

    @Override // p079k.A
    public final void d(o oVar, boolean z7) {
        z zVar = this.f25812K;
        if (zVar != null) {
            zVar.d(oVar, z7);
        }
    }

    @Override // p079k.A
    public final boolean e(q qVar) {
        return false;
    }

    @Override // p079k.A
    public final void f(z zVar) {
        this.f25812K = zVar;
    }

    @Override // p079k.A
    public final boolean g() {
        return false;
    }

    @Override // p079k.A
    public final void i() {
        j jVar = this.f25813L;
        if (jVar != null) {
            jVar.notifyDataSetChanged();
        }
    }

    @Override // p079k.A
    public final void k(Context context, o oVar) {
        if (this.f25808G != null) {
            this.f25808G = context;
            if (this.f25809H == null) {
                this.f25809H = LayoutInflater.from(context);
            }
        }
        this.f25810I = oVar;
        j jVar = this.f25813L;
        if (jVar != null) {
            jVar.notifyDataSetChanged();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i8, long j8) {
        this.f25810I.q(this.f25813L.getItem(i8), this, 0);
    }
}
