package Y;

import android.util.Log;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import okhttp3.HttpUrl;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewGroup f7873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f7874b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f7875c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f7876d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f7877e = false;

    public e0(ViewGroup viewGroup) {
        this.f7873a = viewGroup;
    }

    public static e0 f(ViewGroup viewGroup, C c8) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof e0) {
            return (e0) tag;
        }
        c8.getClass();
        C0397i c0397i = new C0397i(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, c0397i);
        return c0397i;
    }

    public final void a(int i8, int i9, P p7) {
        synchronized (this.f7874b) {
            try {
                J.c cVar = new J.c();
                d0 d0VarD = d(p7.f7778c);
                if (d0VarD != null) {
                    d0VarD.c(i8, i9);
                    return;
                }
                d0 d0Var = new d0(i8, i9, p7, cVar);
                this.f7874b.add(d0Var);
                d0Var.f7864d.add(new c0(this, d0Var, 0));
                d0Var.f7864d.add(new c0(this, d0Var, 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void b(ArrayList arrayList, boolean z7);

    public final void c() {
        if (this.f7877e) {
            return;
        }
        ViewGroup viewGroup = this.f7873a;
        WeakHashMap weakHashMap = N.N.f4843a;
        if (!viewGroup.isAttachedToWindow()) {
            e();
            this.f7876d = false;
            return;
        }
        synchronized (this.f7874b) {
            try {
                if (!this.f7874b.isEmpty()) {
                    ArrayList<d0> arrayList = new ArrayList(this.f7875c);
                    this.f7875c.clear();
                    for (d0 d0Var : arrayList) {
                        if (Log.isLoggable("FragmentManager", 2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + d0Var);
                        }
                        d0Var.a();
                        if (!d0Var.f7867g) {
                            this.f7875c.add(d0Var);
                        }
                    }
                    h();
                    ArrayList arrayList2 = new ArrayList(this.f7874b);
                    this.f7874b.clear();
                    this.f7875c.addAll(arrayList2);
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                    }
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((d0) it.next()).d();
                    }
                    b(arrayList2, this.f7876d);
                    this.f7876d = false;
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final d0 d(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        for (d0 d0Var : this.f7874b) {
            if (d0Var.f7863c.equals(abstractComponentCallbacksC0406s) && !d0Var.f7866f) {
                return d0Var;
            }
        }
        return null;
    }

    public final void e() {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        ViewGroup viewGroup = this.f7873a;
        WeakHashMap weakHashMap = N.N.f4843a;
        boolean zIsAttachedToWindow = viewGroup.isAttachedToWindow();
        synchronized (this.f7874b) {
            try {
                h();
                Iterator it = this.f7874b.iterator();
                while (it.hasNext()) {
                    ((d0) it.next()).d();
                }
                for (d0 d0Var : new ArrayList(this.f7875c)) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        sb.append(zIsAttachedToWindow ? HttpUrl.FRAGMENT_ENCODE_SET : "Container " + this.f7873a + " is not attached to window. ");
                        sb.append("Cancelling running operation ");
                        sb.append(d0Var);
                        Log.v("FragmentManager", sb.toString());
                    }
                    d0Var.a();
                }
                for (d0 d0Var2 : new ArrayList(this.f7874b)) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        sb2.append(zIsAttachedToWindow ? HttpUrl.FRAGMENT_ENCODE_SET : "Container " + this.f7873a + " is not attached to window. ");
                        sb2.append("Cancelling pending operation ");
                        sb2.append(d0Var2);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    d0Var2.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        synchronized (this.f7874b) {
            try {
                h();
                this.f7877e = false;
                for (int size = this.f7874b.size() - 1; size >= 0; size--) {
                    d0 d0Var = (d0) this.f7874b.get(size);
                    int iF = A0.O.f(d0Var.f7863c.f7963m0);
                    if (d0Var.f7861a == 2 && iF != 2) {
                        C0405q c0405q = d0Var.f7863c.f7966p0;
                        this.f7877e = false;
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        for (d0 d0Var : this.f7874b) {
            if (d0Var.f7862b == 2) {
                d0Var.c(A0.O.e(d0Var.f7863c.N().getVisibility()), 1);
            }
        }
    }
}
