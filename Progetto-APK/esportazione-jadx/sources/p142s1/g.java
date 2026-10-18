package p142s1;

import A0.O;
import J.k;
import N.C0252a;
import N.C0253b;
import N.N;
import O1.C;
import O1.C0304c;
import O1.C0311j;
import O1.H;
import O1.M;
import O1.Q;
import O1.S;
import O1.T;
import O1.Y;
import O1.c0;
import O1.d0;
import O1.e0;
import android.os.Trace;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import androidx.leanback.widget.C0475a;
import androidx.recyclerview.widget.RecyclerView;
import com.google.protobuf.U2;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.WeakHashMap;
import p046f6.c;
import p113o3.r;
import p132r.h;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f30043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Cloneable f30045c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Cloneable f30046d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Cloneable f30047e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f30048f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f30049g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f30050h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f30051i;

    public g(int i8, int i9, int i10) {
        if (i10 != 2) {
            this.f30043a = i8;
            this.f30044b = i9;
            this.f30045c = new SparseArray();
            this.f30046d = new SparseArray();
            this.f30047e = new SparseArray();
            this.f30048f = new SparseArray();
            this.f30049g = new SparseArray();
            return;
        }
        this.f30043a = i8;
        this.f30044b = i9;
        this.f30045c = new SparseArray();
        this.f30046d = new SparseArray();
        this.f30047e = new SparseArray();
        this.f30048f = new SparseArray();
        this.f30049g = new SparseArray();
    }

    public final void a(c0 c0Var, boolean z7) {
        RecyclerView.l(c0Var);
        e0 e0Var = ((RecyclerView) this.f30051i).f9649U0;
        View view = c0Var.f5353G;
        if (e0Var != null) {
            d0 d0Var = e0Var.f5383e;
            N.m(view, d0Var instanceof d0 ? (C0253b) d0Var.f5376e.remove(view) : null);
        }
        if (z7) {
            T t7 = ((RecyclerView) this.f30051i).f9648U;
            if (t7 != null) {
                ((C0475a) t7).a(c0Var);
            }
            int size = ((RecyclerView) this.f30051i).f9650V.size();
            for (int i8 = 0; i8 < size; i8++) {
                ((C0475a) ((T) ((RecyclerView) this.f30051i).f9650V.get(i8))).a(c0Var);
            }
            Object obj = this.f30051i;
            C c8 = ((RecyclerView) obj).f9644S;
            RecyclerView recyclerView = (RecyclerView) obj;
            if (recyclerView.f9635N0 != null) {
                recyclerView.f9632M.m(c0Var);
            }
            if (RecyclerView.f9606j1) {
                Log.d("RecyclerView", "dispatchViewRecycled: " + c0Var);
            }
        }
        c0Var.f5371Y = null;
        c0Var.f5370X = null;
        S sC = c();
        sC.getClass();
        int i9 = c0Var.f5358L;
        ArrayList arrayList = sC.a(i9).f5298a;
        if (((Q) sC.f5302a.get(i9)).f5299b <= arrayList.size()) {
            r.d(view);
        } else {
            if (RecyclerView.f9605i1 && arrayList.contains(c0Var)) {
                throw new IllegalArgumentException("this scrap item already exists");
            }
            c0Var.o();
            arrayList.add(c0Var);
        }
    }

    public final int b(int i8) {
        if (i8 >= 0 && i8 < ((RecyclerView) this.f30051i).f9635N0.b()) {
            Object obj = this.f30051i;
            return !((RecyclerView) obj).f9635N0.f5320g ? i8 : ((RecyclerView) obj).f9628K.f(i8, 0);
        }
        StringBuilder sbK = p000a.r.k("invalid position ", i8, ". State item count is ");
        sbK.append(((RecyclerView) this.f30051i).f9635N0.b());
        throw new IndexOutOfBoundsException(U2.i((RecyclerView) this.f30051i, sbK));
    }

    public final S c() {
        if (((S) this.f30049g) == null) {
            S s7 = new S();
            s7.f5302a = new SparseArray();
            s7.f5303b = 0;
            s7.f5304c = Collections.newSetFromMap(new IdentityHashMap());
            this.f30049g = s7;
            e();
        }
        return (S) this.f30049g;
    }

    public final View d(int i8) {
        return l(i8, Long.MAX_VALUE).f5353G;
    }

    public final void e() {
        Object obj = this.f30049g;
        if (((S) obj) != null) {
            Object obj2 = this.f30051i;
            if (((RecyclerView) obj2).f9644S == null || !((RecyclerView) obj2).f9661c0) {
                return;
            }
            ((S) obj).f5304c.add(((RecyclerView) obj2).f9644S);
        }
    }

    public final void f(C c8, boolean z7) {
        S s7 = (S) this.f30049g;
        if (s7 == null) {
            return;
        }
        Set set = s7.f5304c;
        set.remove(c8);
        if (set.size() != 0 || z7) {
            return;
        }
        int i8 = 0;
        while (true) {
            SparseArray sparseArray = s7.f5302a;
            if (i8 >= sparseArray.size()) {
                return;
            }
            ArrayList arrayList = ((Q) sparseArray.get(sparseArray.keyAt(i8))).f5298a;
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                r.d(((c0) arrayList.get(i9)).f5353G);
            }
            i8++;
        }
    }

    public final void g() {
        ArrayList arrayList = (ArrayList) this.f30047e;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            h(size);
        }
        arrayList.clear();
        if (RecyclerView.f9610n1) {
            h hVar = ((RecyclerView) this.f30051i).f9633M0;
            int[] iArr = hVar.f29666d;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            hVar.f29667e = 0;
        }
    }

    public final void h(int i8) {
        if (RecyclerView.f9606j1) {
            Log.d("RecyclerView", "Recycling cached view at index " + i8);
        }
        Cloneable cloneable = this.f30047e;
        c0 c0Var = (c0) ((ArrayList) cloneable).get(i8);
        if (RecyclerView.f9606j1) {
            Log.d("RecyclerView", "CachedViewHolder to be recycled: " + c0Var);
        }
        a(c0Var, true);
        ((ArrayList) cloneable).remove(i8);
    }

    public final void i(View view) {
        c0 c0VarL = RecyclerView.L(view);
        if (c0VarL.l()) {
            ((RecyclerView) this.f30051i).removeDetachedView(view, false);
        }
        if (c0VarL.k()) {
            c0VarL.f5366T.m(c0VarL);
        } else if (c0VarL.r()) {
            c0VarL.f5362P &= -33;
        }
        j(c0VarL);
        if (((RecyclerView) this.f30051i).f9686v0 == null || c0VarL.i()) {
            return;
        }
        ((RecyclerView) this.f30051i).f9686v0.d(c0VarL);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002e  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:53:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:58:0x00d0 A[LOOP:2: B:54:0x00c5->B:58:0x00d0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:87:0x00d3 A[EDGE_INSN: B:87:0x00d3->B:59:0x00d3 BREAK  A[LOOP:1: B:50:0x00ac->B:57:0x00cd], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x00d3 A[EDGE_INSN: B:88:0x00d3->B:59:0x00d3 BREAK  A[LOOP:1: B:50:0x00ac->B:57:0x00cd, LOOP_LABEL: LOOP:1: B:50:0x00ac->B:57:0x00cd], SYNTHETIC] */
    public final void j(c0 c0Var) {
        boolean z7;
        boolean z8;
        int i8;
        int i9;
        h hVar;
        int i10;
        int i11;
        boolean zK = c0Var.k();
        boolean z9 = false;
        boolean z10 = true;
        View view = c0Var.f5353G;
        if (zK || view.getParent() != null) {
            StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(c0Var.k());
            sb.append(" isAttached:");
            sb.append(view.getParent() != null);
            throw new IllegalArgumentException(U2.i((RecyclerView) this.f30051i, sb));
        }
        if (c0Var.l()) {
            StringBuilder sb2 = new StringBuilder("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
            sb2.append(c0Var);
            throw new IllegalArgumentException(U2.i((RecyclerView) this.f30051i, sb2));
        }
        if (c0Var.q()) {
            throw new IllegalArgumentException(U2.i((RecyclerView) this.f30051i, new StringBuilder("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
        }
        if ((c0Var.f5362P & 16) == 0) {
            WeakHashMap weakHashMap = N.f4843a;
            if (view.hasTransientState()) {
                z7 = true;
            } else {
                z7 = false;
            }
        } else {
            z7 = false;
        }
        C c8 = ((RecyclerView) this.f30051i).f9644S;
        if (c8 != null && z7) {
            c8.getClass();
        }
        boolean z11 = RecyclerView.f9605i1;
        Cloneable cloneable = this.f30047e;
        if (z11 && ((ArrayList) cloneable).contains(c0Var)) {
            StringBuilder sb3 = new StringBuilder("cached view received recycle internal? ");
            sb3.append(c0Var);
            throw new IllegalArgumentException(U2.i((RecyclerView) this.f30051i, sb3));
        }
        if (c0Var.i()) {
            if (this.f30044b <= 0 || c0Var.f(526)) {
                z8 = false;
            } else {
                ArrayList arrayList = (ArrayList) cloneable;
                int size = arrayList.size();
                if (size >= this.f30044b && size > 0) {
                    h(0);
                    size--;
                }
                if (RecyclerView.f9610n1 && size > 0) {
                    h hVar2 = ((RecyclerView) this.f30051i).f9633M0;
                    int i12 = c0Var.f5355I;
                    if (hVar2.f29666d != null) {
                        int i13 = hVar2.f29667e * 2;
                        int i14 = 0;
                        while (true) {
                            if (i14 >= i13) {
                                i8 = size - 1;
                                loop1: while (i8 >= 0) {
                                    i9 = ((c0) arrayList.get(i8)).f5355I;
                                    hVar = ((RecyclerView) this.f30051i).f9633M0;
                                    if (hVar.f29666d != null) {
                                        break;
                                    }
                                    i10 = hVar.f29667e * 2;
                                    i11 = 0;
                                    while (true) {
                                        if (i11 < i10) {
                                            break loop1;
                                        } else if (hVar.f29666d[i11] == i9) {
                                            break;
                                        } else {
                                            i11 += 2;
                                        }
                                    }
                                    i8--;
                                }
                                size = i8 + 1;
                            } else if (hVar2.f29666d[i14] != i12) {
                                i14 += 2;
                            }
                        }
                    } else {
                        i8 = size - 1;
                        loop1: while (i8 >= 0) {
                            i9 = ((c0) arrayList.get(i8)).f5355I;
                            hVar = ((RecyclerView) this.f30051i).f9633M0;
                            if (hVar.f29666d != null) {
                                break;
                                break;
                            }
                            i10 = hVar.f29667e * 2;
                            i11 = 0;
                            while (true) {
                                if (i11 < i10) {
                                    break loop1;
                                    break loop1;
                                } else if (hVar.f29666d[i11] == i9) {
                                    break;
                                } else {
                                    i11 += 2;
                                }
                            }
                            i8--;
                        }
                        size = i8 + 1;
                    }
                }
                arrayList.add(size, c0Var);
                z8 = true;
            }
            if (z8) {
                z9 = z8;
            } else {
                a(c0Var, true);
                z9 = z8;
            }
            ((RecyclerView) this.f30051i).f9632M.m(c0Var);
            if (z9 && !z10 && z7) {
                r.d(view);
                c0Var.f5371Y = null;
                c0Var.f5370X = null;
                return;
            }
            return;
        }
        if (RecyclerView.f9606j1) {
            Log.d("RecyclerView", "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists" + ((RecyclerView) this.f30051i).B());
        }
        z10 = false;
        ((RecyclerView) this.f30051i).f9632M.m(c0Var);
        if (z9) {
        }
    }

    public final void k(View view) {
        H h8;
        c0 c0VarL = RecyclerView.L(view);
        if (!c0VarL.f(12) && c0VarL.m() && (h8 = ((RecyclerView) this.f30051i).f9686v0) != null) {
            C0311j c0311j = (C0311j) h8;
            if (c0VarL.e().isEmpty() && c0311j.f5419g && !c0VarL.h()) {
                if (((ArrayList) this.f30046d) == null) {
                    this.f30046d = new ArrayList();
                }
                c0VarL.f5366T = this;
                c0VarL.f5367U = true;
                ((ArrayList) this.f30046d).add(c0VarL);
                return;
            }
        }
        if (c0VarL.h() && !c0VarL.j()) {
            ((RecyclerView) this.f30051i).f9644S.getClass();
            throw new IllegalArgumentException(U2.i((RecyclerView) this.f30051i, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
        }
        c0VarL.f5366T = this;
        c0VarL.f5367U = false;
        ((ArrayList) this.f30045c).add(c0VarL);
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0205  */
    /* JADX WARN: Code duplicated, block: B:108:0x020f  */
    /* JADX WARN: Code duplicated, block: B:109:0x021e  */
    /* JADX WARN: Code duplicated, block: B:111:0x0224  */
    /* JADX WARN: Code duplicated, block: B:114:0x0238  */
    /* JADX WARN: Code duplicated, block: B:119:0x025b  */
    /* JADX WARN: Code duplicated, block: B:142:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:190:0x03de  */
    /* JADX WARN: Code duplicated, block: B:196:0x0413  */
    /* JADX WARN: Code duplicated, block: B:198:0x0419  */
    /* JADX WARN: Code duplicated, block: B:205:0x0429  */
    /* JADX WARN: Code duplicated, block: B:207:0x042d  */
    /* JADX WARN: Code duplicated, block: B:214:0x0468  */
    /* JADX WARN: Code duplicated, block: B:216:0x0476  */
    /* JADX WARN: Code duplicated, block: B:220:0x0481  */
    /* JADX WARN: Code duplicated, block: B:221:0x0492  */
    /* JADX WARN: Code duplicated, block: B:224:0x04a0  */
    /* JADX WARN: Code duplicated, block: B:225:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:227:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:229:0x04b4  */
    /* JADX WARN: Code duplicated, block: B:232:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:234:0x04d3  */
    /* JADX WARN: Code duplicated, block: B:241:0x0510  */
    /* JADX WARN: Code duplicated, block: B:248:0x0533  */
    /* JADX WARN: Code duplicated, block: B:250:0x0537  */
    /* JADX WARN: Code duplicated, block: B:253:0x0548  */
    /* JADX WARN: Code duplicated, block: B:256:0x0551  */
    /* JADX WARN: Code duplicated, block: B:260:0x0574  */
    /* JADX WARN: Code duplicated, block: B:263:0x0587  */
    /* JADX WARN: Code duplicated, block: B:267:0x0593  */
    /* JADX WARN: Code duplicated, block: B:271:0x059f  */
    /* JADX WARN: Code duplicated, block: B:273:0x05a5  */
    /* JADX WARN: Code duplicated, block: B:275:0x05ae  */
    /* JADX WARN: Code duplicated, block: B:276:0x05b0  */
    /* JADX WARN: Code duplicated, block: B:278:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:279:0x05b9  */
    /* JADX WARN: Code duplicated, block: B:281:0x05c1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:286:0x05d5  */
    /* JADX WARN: Code duplicated, block: B:290:0x05de  */
    /* JADX WARN: Code duplicated, block: B:291:0x05ec  */
    /* JADX WARN: Code duplicated, block: B:293:0x05f6  */
    /* JADX WARN: Code duplicated, block: B:294:0x0604  */
    /* JADX WARN: Code duplicated, block: B:297:0x060a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:29:0x0062  */
    /* JADX WARN: Code duplicated, block: B:310:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:316:0x00d0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x006d  */
    /* JADX WARN: Code duplicated, block: B:320:0x01a7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:61:0x0101 A[EDGE_INSN: B:61:0x0101->B:85:0x01a8 BREAK  A[LOOP:1: B:30:0x006b->B:42:0x009b]] */
    /* JADX WARN: Code duplicated, block: B:62:0x0115  */
    /* JADX WARN: Code duplicated, block: B:64:0x012d  */
    /* JADX WARN: Code duplicated, block: B:66:0x0141  */
    /* JADX WARN: Code duplicated, block: B:68:0x0155  */
    /* JADX WARN: Code duplicated, block: B:70:0x0160  */
    /* JADX WARN: Code duplicated, block: B:86:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:88:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:98:0x01df  */
    /* JADX WARN: Instruction removed from duplicated block: B:64:0x012d, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:66:0x0141, please report this as an issue */
    public final c0 l(int i8, long j8) {
        c0 c0Var;
        boolean z7;
        boolean z8;
        View view;
        int iF;
        int i9;
        boolean z9;
        boolean z10;
        long nanoTime;
        long j9;
        AccessibilityManager accessibilityManager;
        boolean z11;
        e0 e0Var;
        d0 d0Var;
        View.AccessibilityDelegate accessibilityDelegateD;
        C0253b c0253b;
        ArrayList arrayList;
        ViewGroup.LayoutParams layoutParams;
        long j10;
        ViewGroup.LayoutParams layoutParams2;
        M m7;
        int iF2;
        RecyclerView recyclerViewG;
        ArrayList arrayList2;
        int size;
        int i10;
        C0304c c0304c;
        ArrayList arrayList3;
        int size2;
        int i11;
        View view2;
        ArrayList arrayList4;
        int size3;
        int i12;
        c0 c0Var2;
        c0 c0VarL;
        C0304c c0304c2;
        int iIndexOfChild;
        c cVar;
        int iJ;
        c0 c0VarL2;
        int i13;
        c0 c0Var3;
        int size4;
        boolean z12 = false;
        if (i8 < 0 || i8 >= ((RecyclerView) this.f30051i).f9635N0.b()) {
            StringBuilder sbD = O.D("Invalid item position ", i8, "(", i8, "). Item count:");
            sbD.append(((RecyclerView) this.f30051i).f9635N0.b());
            throw new IndexOutOfBoundsException(U2.i((RecyclerView) this.f30051i, sbD));
        }
        if (((RecyclerView) this.f30051i).f9635N0.f5320g) {
            ArrayList arrayList5 = (ArrayList) this.f30046d;
            if (arrayList5 != null && (size4 = arrayList5.size()) != 0) {
                int i14 = 0;
                while (true) {
                    if (i14 >= size4) {
                        ((RecyclerView) this.f30051i).f9644S.getClass();
                        c0Var = null;
                        break;
                    }
                    c0Var = (c0) ((ArrayList) this.f30046d).get(i14);
                    if (!c0Var.r() && c0Var.d() == i8) {
                        c0Var.b(32);
                        break;
                    }
                    i14++;
                }
            } else {
                c0Var = null;
                break;
            }
            z7 = c0Var != null;
            if (c0Var == null) {
                arrayList2 = (ArrayList) this.f30045c;
                size = arrayList2.size();
                i10 = 0;
                while (true) {
                    if (i10 < size) {
                        c0304c = ((RecyclerView) this.f30051i).f9630L;
                        arrayList3 = c0304c.f5349c;
                        size2 = arrayList3.size();
                        i11 = 0;
                        while (true) {
                            if (i11 < size2) {
                                view2 = null;
                                break;
                            }
                            view2 = (View) arrayList3.get(i11);
                            c0304c.f5347a.getClass();
                            c0VarL2 = RecyclerView.L(view2);
                            if (c0VarL2.d() != i8 && !c0VarL2.h() && !c0VarL2.j()) {
                                break;
                            }
                            i11++;
                        }
                        if (view2 != null) {
                            arrayList4 = (ArrayList) this.f30047e;
                            size3 = arrayList4.size();
                            i12 = 0;
                            while (true) {
                                if (i12 < size3) {
                                    c0Var = null;
                                    break;
                                }
                                c0Var2 = (c0) arrayList4.get(i12);
                                if (c0Var2.h() && c0Var2.d() == i8) {
                                    View view3 = c0Var2.f5353G;
                                    if (view3.getParent() == null || view3.getParent() == c0Var2.f5370X) {
                                        arrayList4.remove(i12);
                                        if (RecyclerView.f9606j1) {
                                            Log.d("RecyclerView", "getScrapOrHiddenOrCachedHolderForPosition(" + i8 + ") found match in cache: " + c0Var2);
                                        }
                                        c0Var = c0Var2;
                                        break;
                                    }
                                }
                                i12++;
                            }
                        } else {
                            c0VarL = RecyclerView.L(view2);
                            c0304c2 = ((RecyclerView) this.f30051i).f9630L;
                            iIndexOfChild = c0304c2.f5347a.f5264G.indexOfChild(view2);
                            if (iIndexOfChild >= 0) {
                                throw new IllegalArgumentException("view is not a child, cannot hide " + view2);
                            }
                            cVar = c0304c2.f5348b;
                            if (cVar.d(iIndexOfChild)) {
                                throw new RuntimeException("trying to unhide a view that was not hidden" + view2);
                            }
                            cVar.a(iIndexOfChild);
                            c0304c2.l(view2);
                            iJ = ((RecyclerView) this.f30051i).f9630L.j(view2);
                            if (iJ != -1) {
                                StringBuilder sb = new StringBuilder("layout index should not be -1 after unhiding a view:");
                                sb.append(c0VarL);
                                throw new IllegalStateException(U2.i((RecyclerView) this.f30051i, sb));
                            }
                            ((RecyclerView) this.f30051i).f9630L.c(iJ);
                            k(view2);
                            c0VarL.b(8224);
                            c0Var = c0VarL;
                            break;
                        }
                    } else {
                        c0Var3 = (c0) arrayList2.get(i10);
                        if (c0Var3.r() && c0Var3.d() == i8 && !c0Var3.h() && (((RecyclerView) this.f30051i).f9635N0.f5320g || !c0Var3.j())) {
                            c0Var3.b(32);
                            c0Var = c0Var3;
                            break;
                        }
                        i10++;
                    }
                }
                if (c0Var != null) {
                    if (c0Var.j()) {
                        i13 = c0Var.f5355I;
                        if (i13 >= 0 || i13 >= ((RecyclerView) this.f30051i).f9644S.a()) {
                            StringBuilder sb2 = new StringBuilder("Inconsistency detected. Invalid view holder adapter position");
                            sb2.append(c0Var);
                            throw new IndexOutOfBoundsException(U2.i((RecyclerView) this.f30051i, sb2));
                        }
                        RecyclerView recyclerView = (RecyclerView) this.f30051i;
                        if (recyclerView.f9635N0.f5320g || recyclerView.f9644S.b(c0Var.f5355I) == c0Var.f5358L) {
                            ((RecyclerView) this.f30051i).f9644S.getClass();
                            z7 = true;
                        } else {
                            c0Var.b(4);
                            if (c0Var.k()) {
                                ((RecyclerView) this.f30051i).removeDetachedView(c0Var.f5353G, false);
                                c0Var.f5366T.m(c0Var);
                            } else if (c0Var.r()) {
                                c0Var.f5362P &= -33;
                            }
                            j(c0Var);
                            c0Var = null;
                        }
                    } else {
                        if (!RecyclerView.f9605i1 && !((RecyclerView) this.f30051i).f9635N0.f5320g) {
                            throw new IllegalStateException(U2.i((RecyclerView) this.f30051i, new StringBuilder("should not receive a removed view unless it is pre layout")));
                        }
                        if (((RecyclerView) this.f30051i).f9635N0.f5320g) {
                            z7 = true;
                        } else {
                            c0Var.b(4);
                            if (c0Var.k()) {
                                ((RecyclerView) this.f30051i).removeDetachedView(c0Var.f5353G, false);
                                c0Var.f5366T.m(c0Var);
                            } else if (c0Var.r()) {
                                c0Var.f5362P &= -33;
                            }
                            j(c0Var);
                            c0Var = null;
                        }
                    }
                }
            }
            if (c0Var == null) {
                iF2 = ((RecyclerView) this.f30051i).f9628K.f(i8, 0);
                if (iF2 >= 0 || iF2 >= ((RecyclerView) this.f30051i).f9644S.a()) {
                    StringBuilder sbD2 = O.D("Inconsistency detected. Invalid item position ", i8, "(offset:", iF2, ").state:");
                    sbD2.append(((RecyclerView) this.f30051i).f9635N0.b());
                    throw new IndexOutOfBoundsException(U2.i((RecyclerView) this.f30051i, sbD2));
                }
                int iB = ((RecyclerView) this.f30051i).f9644S.b(iF2);
                ((RecyclerView) this.f30051i).f9644S.getClass();
                if (c0Var == null) {
                    O.I(this.f30050h);
                }
                if (c0Var == null) {
                    if (RecyclerView.f9606j1) {
                        Log.d("RecyclerView", "tryGetViewHolderForPositionByDeadline(" + i8 + ") fetching from shared pool");
                    }
                    Q q7 = (Q) c().f5302a.get(iB);
                    if (q7 != null) {
                        ArrayList arrayList6 = q7.f5298a;
                        if (arrayList6.isEmpty()) {
                            c0Var = null;
                        } else {
                            int size5 = arrayList6.size() - 1;
                            while (true) {
                                if (size5 >= 0) {
                                    c0 c0Var4 = (c0) arrayList6.get(size5);
                                    View view4 = c0Var4.f5353G;
                                    if (view4.getParent() == null || view4.getParent() == c0Var4.f5370X) {
                                        c0Var = (c0) arrayList6.remove(size5);
                                    } else {
                                        size5--;
                                    }
                                } else {
                                    c0Var = null;
                                }
                            }
                        }
                    } else {
                        c0Var = null;
                    }
                    if (c0Var != null) {
                        c0Var.o();
                        boolean z13 = RecyclerView.f9605i1;
                    }
                }
                if (c0Var == null) {
                    long nanoTime2 = ((RecyclerView) this.f30051i).getNanoTime();
                    if (j8 != Long.MAX_VALUE) {
                        long j11 = ((S) this.f30049g).a(iB).f5300c;
                        if (j11 != 0 && j11 + nanoTime2 >= j8) {
                            return null;
                        }
                    }
                    RecyclerView recyclerView2 = (RecyclerView) this.f30051i;
                    C c8 = recyclerView2.f9644S;
                    c8.getClass();
                    try {
                        if (k.a()) {
                            Trace.beginSection(String.format("RV onCreateViewHolder type=0x%X", Integer.valueOf(iB)));
                        }
                        c0 c0VarD = c8.d(recyclerView2, iB);
                        if (c0VarD.f5353G.getParent() != null) {
                            throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                        }
                        c0VarD.f5358L = iB;
                        Trace.endSection();
                        if (RecyclerView.f9610n1 && (recyclerViewG = RecyclerView.G(c0VarD.f5353G)) != null) {
                            c0VarD.f5354H = new WeakReference(recyclerViewG);
                        }
                        long nanoTime3 = ((RecyclerView) this.f30051i).getNanoTime() - nanoTime2;
                        Q qA = ((S) this.f30049g).a(iB);
                        long j12 = qA.f5300c;
                        if (j12 != 0) {
                            nanoTime3 = (nanoTime3 / 4) + ((j12 / 4) * 3);
                        }
                        qA.f5300c = nanoTime3;
                        if (RecyclerView.f9606j1) {
                            Log.d("RecyclerView", "tryGetViewHolderForPositionByDeadline created new ViewHolder");
                        }
                        c0Var = c0VarD;
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                }
            }
            if (z7 && !((RecyclerView) this.f30051i).f9635N0.f5320g && c0Var.f(8192)) {
                c0Var.f5362P &= -8193;
                if (((RecyclerView) this.f30051i).f9635N0.f5323j) {
                    H.b(c0Var);
                    RecyclerView recyclerView3 = (RecyclerView) this.f30051i;
                    H h8 = recyclerView3.f9686v0;
                    Y y7 = recyclerView3.f9635N0;
                    c0Var.e();
                    h8.getClass();
                    p072j0.c cVar2 = new p072j0.c(2);
                    cVar2.b(c0Var);
                    ((RecyclerView) this.f30051i).a0(c0Var, cVar2);
                }
            }
            z8 = ((RecyclerView) this.f30051i).f9635N0.f5320g;
            view = c0Var.f5353G;
            if (z8 || !c0Var.g()) {
                if (c0Var.g() || (2 & c0Var.f5362P) != 0 || c0Var.h()) {
                    if (!RecyclerView.f9605i1 && c0Var.j()) {
                        StringBuilder sb3 = new StringBuilder("Removed holder should be bound and it should come here only in pre-layout. Holder: ");
                        sb3.append(c0Var);
                        throw new IllegalStateException(U2.i((RecyclerView) this.f30051i, sb3));
                    }
                    iF = ((RecyclerView) this.f30051i).f9628K.f(i8, 0);
                    c0Var.f5371Y = null;
                    RecyclerView recyclerView4 = (RecyclerView) this.f30051i;
                    c0Var.f5370X = recyclerView4;
                    i9 = c0Var.f5358L;
                    long nanoTime4 = recyclerView4.getNanoTime();
                    if (j8 != Long.MAX_VALUE) {
                        j10 = ((S) this.f30049g).a(i9).f5301d;
                        if (j10 != 0 || j10 + nanoTime4 < j8) {
                        }
                    }
                    if (c0Var.l()) {
                        RecyclerView recyclerView5 = (RecyclerView) this.f30051i;
                        recyclerView5.attachViewToParent(view, recyclerView5.getChildCount(), view.getLayoutParams());
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    C c9 = ((RecyclerView) this.f30051i).f9644S;
                    c9.getClass();
                    if (c0Var.f5371Y == null) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        c0Var.f5355I = iF;
                        c0Var.f5362P = (c0Var.f5362P & (-520)) | 1;
                        if (k.a()) {
                            Trace.beginSection(String.format("RV onBindViewHolder type=0x%X", Integer.valueOf(c0Var.f5358L)));
                        }
                    }
                    c0Var.f5371Y = c9;
                    if (RecyclerView.f9605i1) {
                        if (view.getParent() != null && view.isAttachedToWindow() != c0Var.l()) {
                            throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + c0Var.l() + ", attached to window: " + view.isAttachedToWindow() + ", holder: " + c0Var);
                        }
                        if (view.getParent() == null && view.isAttachedToWindow()) {
                            throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + c0Var);
                        }
                    }
                    c0Var.e();
                    c9.c(c0Var, iF);
                    if (z10) {
                        arrayList = c0Var.f5363Q;
                        if (arrayList != null) {
                            arrayList.clear();
                        }
                        c0Var.f5362P &= -1025;
                        layoutParams = view.getLayoutParams();
                        if (layoutParams instanceof M) {
                            ((M) layoutParams).f5296c = true;
                        }
                        Trace.endSection();
                    }
                    if (z9) {
                        ((RecyclerView) this.f30051i).detachViewFromParent(view);
                    }
                    nanoTime = ((RecyclerView) this.f30051i).getNanoTime() - nanoTime4;
                    Q qA2 = ((S) this.f30049g).a(c0Var.f5358L);
                    j9 = qA2.f5301d;
                    if (j9 != 0) {
                        nanoTime = (nanoTime / 4) + ((j9 / 4) * 3);
                    }
                    qA2.f5301d = nanoTime;
                    accessibilityManager = ((RecyclerView) this.f30051i).f9676l0;
                    if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                        if (view.getImportantForAccessibility() == 0) {
                            view.setImportantForAccessibility(1);
                        }
                        e0Var = ((RecyclerView) this.f30051i).f9649U0;
                        if (e0Var != null) {
                            d0Var = e0Var.f5383e;
                            if (d0Var instanceof d0) {
                                d0Var.getClass();
                                accessibilityDelegateD = N.d(view);
                                if (accessibilityDelegateD == null) {
                                    c0253b = null;
                                } else if (accessibilityDelegateD instanceof C0252a) {
                                    c0253b = ((C0252a) accessibilityDelegateD).f4875a;
                                } else {
                                    c0253b = new C0253b(accessibilityDelegateD);
                                }
                                if (c0253b != null && c0253b != d0Var) {
                                    d0Var.f5376e.put(view, c0253b);
                                }
                            }
                            N.m(view, d0Var);
                        }
                    }
                    if (((RecyclerView) this.f30051i).f9635N0.f5320g) {
                        c0Var.f5359M = i8;
                    }
                    z11 = true;
                }
                layoutParams2 = view.getLayoutParams();
                if (layoutParams2 == null) {
                    m7 = (M) ((RecyclerView) this.f30051i).generateDefaultLayoutParams();
                    view.setLayoutParams(m7);
                } else if (((RecyclerView) this.f30051i).checkLayoutParams(layoutParams2)) {
                    m7 = (M) layoutParams2;
                } else {
                    m7 = (M) ((RecyclerView) this.f30051i).generateLayoutParams(layoutParams2);
                    view.setLayoutParams(m7);
                }
                m7.f5294a = c0Var;
                if (z7 && z11) {
                    z12 = true;
                }
                m7.f5297d = z12;
                return c0Var;
            }
            c0Var.f5359M = i8;
            z11 = false;
            layoutParams2 = view.getLayoutParams();
            if (layoutParams2 == null) {
                m7 = (M) ((RecyclerView) this.f30051i).generateDefaultLayoutParams();
                view.setLayoutParams(m7);
            } else if (((RecyclerView) this.f30051i).checkLayoutParams(layoutParams2)) {
                m7 = (M) ((RecyclerView) this.f30051i).generateLayoutParams(layoutParams2);
                view.setLayoutParams(m7);
            } else {
                m7 = (M) layoutParams2;
            }
            m7.f5294a = c0Var;
            if (z7) {
                z12 = true;
            }
            m7.f5297d = z12;
            return c0Var;
        }
        c0Var = null;
        if (c0Var == null) {
            arrayList2 = (ArrayList) this.f30045c;
            size = arrayList2.size();
            i10 = 0;
            while (true) {
                if (i10 < size) {
                    c0304c = ((RecyclerView) this.f30051i).f9630L;
                    arrayList3 = c0304c.f5349c;
                    size2 = arrayList3.size();
                    i11 = 0;
                    while (true) {
                        if (i11 < size2) {
                            view2 = null;
                            break;
                        }
                        view2 = (View) arrayList3.get(i11);
                        c0304c.f5347a.getClass();
                        c0VarL2 = RecyclerView.L(view2);
                        if (c0VarL2.d() != i8) {
                        }
                        i11++;
                    }
                    if (view2 != null) {
                        arrayList4 = (ArrayList) this.f30047e;
                        size3 = arrayList4.size();
                        i12 = 0;
                        while (true) {
                            if (i12 < size3) {
                                c0Var = null;
                                break;
                            }
                            c0Var2 = (c0) arrayList4.get(i12);
                            if (c0Var2.h()) {
                            }
                            i12++;
                        }
                    } else {
                        c0VarL = RecyclerView.L(view2);
                        c0304c2 = ((RecyclerView) this.f30051i).f9630L;
                        iIndexOfChild = c0304c2.f5347a.f5264G.indexOfChild(view2);
                        if (iIndexOfChild >= 0) {
                            throw new IllegalArgumentException("view is not a child, cannot hide " + view2);
                        }
                        cVar = c0304c2.f5348b;
                        if (cVar.d(iIndexOfChild)) {
                            throw new RuntimeException("trying to unhide a view that was not hidden" + view2);
                        }
                        cVar.a(iIndexOfChild);
                        c0304c2.l(view2);
                        iJ = ((RecyclerView) this.f30051i).f9630L.j(view2);
                        if (iJ != -1) {
                            StringBuilder sb4 = new StringBuilder("layout index should not be -1 after unhiding a view:");
                            sb4.append(c0VarL);
                            throw new IllegalStateException(U2.i((RecyclerView) this.f30051i, sb4));
                        }
                        ((RecyclerView) this.f30051i).f9630L.c(iJ);
                        k(view2);
                        c0VarL.b(8224);
                        c0Var = c0VarL;
                        break;
                    }
                } else {
                    c0Var3 = (c0) arrayList2.get(i10);
                    if (c0Var3.r()) {
                    }
                    i10++;
                }
            }
            if (c0Var != null) {
                if (c0Var.j()) {
                    i13 = c0Var.f5355I;
                    if (i13 >= 0) {
                    }
                    StringBuilder sb5 = new StringBuilder("Inconsistency detected. Invalid view holder adapter position");
                    sb5.append(c0Var);
                    throw new IndexOutOfBoundsException(U2.i((RecyclerView) this.f30051i, sb5));
                }
                if (!RecyclerView.f9605i1) {
                }
                if (((RecyclerView) this.f30051i).f9635N0.f5320g) {
                    c0Var.b(4);
                    if (c0Var.k()) {
                        ((RecyclerView) this.f30051i).removeDetachedView(c0Var.f5353G, false);
                        c0Var.f5366T.m(c0Var);
                    } else if (c0Var.r()) {
                        c0Var.f5362P &= -33;
                    }
                    j(c0Var);
                    c0Var = null;
                } else {
                    z7 = true;
                }
            }
        }
        if (c0Var == null) {
            iF2 = ((RecyclerView) this.f30051i).f9628K.f(i8, 0);
            if (iF2 >= 0) {
            }
            StringBuilder sbD3 = O.D("Inconsistency detected. Invalid item position ", i8, "(offset:", iF2, ").state:");
            sbD3.append(((RecyclerView) this.f30051i).f9635N0.b());
            throw new IndexOutOfBoundsException(U2.i((RecyclerView) this.f30051i, sbD3));
        }
        if (z7) {
            c0Var.f5362P &= -8193;
            if (((RecyclerView) this.f30051i).f9635N0.f5323j) {
                H.b(c0Var);
                RecyclerView recyclerView6 = (RecyclerView) this.f30051i;
                H h9 = recyclerView6.f9686v0;
                Y y8 = recyclerView6.f9635N0;
                c0Var.e();
                h9.getClass();
                p072j0.c cVar3 = new p072j0.c(2);
                cVar3.b(c0Var);
                ((RecyclerView) this.f30051i).a0(c0Var, cVar3);
            }
        }
        z8 = ((RecyclerView) this.f30051i).f9635N0.f5320g;
        view = c0Var.f5353G;
        if (z8) {
            if (c0Var.g()) {
                if (!RecyclerView.f9605i1) {
                }
                iF = ((RecyclerView) this.f30051i).f9628K.f(i8, 0);
                c0Var.f5371Y = null;
                RecyclerView recyclerView7 = (RecyclerView) this.f30051i;
                c0Var.f5370X = recyclerView7;
                i9 = c0Var.f5358L;
                long nanoTime5 = recyclerView7.getNanoTime();
                if (j8 != Long.MAX_VALUE) {
                    j10 = ((S) this.f30049g).a(i9).f5301d;
                    if (j10 != 0) {
                    }
                }
                if (c0Var.l()) {
                    RecyclerView recyclerView8 = (RecyclerView) this.f30051i;
                    recyclerView8.attachViewToParent(view, recyclerView8.getChildCount(), view.getLayoutParams());
                    z9 = true;
                } else {
                    z9 = false;
                }
                C c10 = ((RecyclerView) this.f30051i).f9644S;
                c10.getClass();
                if (c0Var.f5371Y == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    c0Var.f5355I = iF;
                    c0Var.f5362P = (c0Var.f5362P & (-520)) | 1;
                    if (k.a()) {
                        Trace.beginSection(String.format("RV onBindViewHolder type=0x%X", Integer.valueOf(c0Var.f5358L)));
                    }
                }
                c0Var.f5371Y = c10;
                if (RecyclerView.f9605i1) {
                    if (view.getParent() != null) {
                    }
                    if (view.getParent() == null) {
                        throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + c0Var);
                    }
                }
                c0Var.e();
                c10.c(c0Var, iF);
                if (z10) {
                    arrayList = c0Var.f5363Q;
                    if (arrayList != null) {
                        arrayList.clear();
                    }
                    c0Var.f5362P &= -1025;
                    layoutParams = view.getLayoutParams();
                    if (layoutParams instanceof M) {
                        ((M) layoutParams).f5296c = true;
                    }
                    Trace.endSection();
                }
                if (z9) {
                    ((RecyclerView) this.f30051i).detachViewFromParent(view);
                }
                nanoTime = ((RecyclerView) this.f30051i).getNanoTime() - nanoTime5;
                Q qA3 = ((S) this.f30049g).a(c0Var.f5358L);
                j9 = qA3.f5301d;
                if (j9 != 0) {
                    nanoTime = (nanoTime / 4) + ((j9 / 4) * 3);
                }
                qA3.f5301d = nanoTime;
                accessibilityManager = ((RecyclerView) this.f30051i).f9676l0;
                if (accessibilityManager != null) {
                    if (view.getImportantForAccessibility() == 0) {
                        view.setImportantForAccessibility(1);
                    }
                    e0Var = ((RecyclerView) this.f30051i).f9649U0;
                    if (e0Var != null) {
                        d0Var = e0Var.f5383e;
                        if (d0Var instanceof d0) {
                            d0Var.getClass();
                            accessibilityDelegateD = N.d(view);
                            if (accessibilityDelegateD == null) {
                                c0253b = null;
                            } else if (accessibilityDelegateD instanceof C0252a) {
                                c0253b = ((C0252a) accessibilityDelegateD).f4875a;
                            } else {
                                c0253b = new C0253b(accessibilityDelegateD);
                            }
                            if (c0253b != null) {
                                d0Var.f5376e.put(view, c0253b);
                            }
                        }
                        N.m(view, d0Var);
                    }
                }
                if (((RecyclerView) this.f30051i).f9635N0.f5320g) {
                    c0Var.f5359M = i8;
                }
                z11 = true;
            } else {
                if (!RecyclerView.f9605i1) {
                }
                iF = ((RecyclerView) this.f30051i).f9628K.f(i8, 0);
                c0Var.f5371Y = null;
                RecyclerView recyclerView9 = (RecyclerView) this.f30051i;
                c0Var.f5370X = recyclerView9;
                i9 = c0Var.f5358L;
                long nanoTime6 = recyclerView9.getNanoTime();
                if (j8 != Long.MAX_VALUE) {
                    j10 = ((S) this.f30049g).a(i9).f5301d;
                    if (j10 != 0) {
                    }
                }
                if (c0Var.l()) {
                    RecyclerView recyclerView10 = (RecyclerView) this.f30051i;
                    recyclerView10.attachViewToParent(view, recyclerView10.getChildCount(), view.getLayoutParams());
                    z9 = true;
                } else {
                    z9 = false;
                }
                C c11 = ((RecyclerView) this.f30051i).f9644S;
                c11.getClass();
                if (c0Var.f5371Y == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    c0Var.f5355I = iF;
                    c0Var.f5362P = (c0Var.f5362P & (-520)) | 1;
                    if (k.a()) {
                        Trace.beginSection(String.format("RV onBindViewHolder type=0x%X", Integer.valueOf(c0Var.f5358L)));
                    }
                }
                c0Var.f5371Y = c11;
                if (RecyclerView.f9605i1) {
                    if (view.getParent() != null) {
                    }
                    if (view.getParent() == null) {
                        throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + c0Var);
                    }
                }
                c0Var.e();
                c11.c(c0Var, iF);
                if (z10) {
                    arrayList = c0Var.f5363Q;
                    if (arrayList != null) {
                        arrayList.clear();
                    }
                    c0Var.f5362P &= -1025;
                    layoutParams = view.getLayoutParams();
                    if (layoutParams instanceof M) {
                        ((M) layoutParams).f5296c = true;
                    }
                    Trace.endSection();
                }
                if (z9) {
                    ((RecyclerView) this.f30051i).detachViewFromParent(view);
                }
                nanoTime = ((RecyclerView) this.f30051i).getNanoTime() - nanoTime6;
                Q qA4 = ((S) this.f30049g).a(c0Var.f5358L);
                j9 = qA4.f5301d;
                if (j9 != 0) {
                    nanoTime = (nanoTime / 4) + ((j9 / 4) * 3);
                }
                qA4.f5301d = nanoTime;
                accessibilityManager = ((RecyclerView) this.f30051i).f9676l0;
                if (accessibilityManager != null) {
                    if (view.getImportantForAccessibility() == 0) {
                        view.setImportantForAccessibility(1);
                    }
                    e0Var = ((RecyclerView) this.f30051i).f9649U0;
                    if (e0Var != null) {
                        d0Var = e0Var.f5383e;
                        if (d0Var instanceof d0) {
                            d0Var.getClass();
                            accessibilityDelegateD = N.d(view);
                            if (accessibilityDelegateD == null) {
                                c0253b = null;
                            } else if (accessibilityDelegateD instanceof C0252a) {
                                c0253b = ((C0252a) accessibilityDelegateD).f4875a;
                            } else {
                                c0253b = new C0253b(accessibilityDelegateD);
                            }
                            if (c0253b != null) {
                                d0Var.f5376e.put(view, c0253b);
                            }
                        }
                        N.m(view, d0Var);
                    }
                }
                if (((RecyclerView) this.f30051i).f9635N0.f5320g) {
                    c0Var.f5359M = i8;
                }
                z11 = true;
            }
        } else if (c0Var.g()) {
            if (!RecyclerView.f9605i1) {
            }
            iF = ((RecyclerView) this.f30051i).f9628K.f(i8, 0);
            c0Var.f5371Y = null;
            RecyclerView recyclerView11 = (RecyclerView) this.f30051i;
            c0Var.f5370X = recyclerView11;
            i9 = c0Var.f5358L;
            long nanoTime7 = recyclerView11.getNanoTime();
            if (j8 != Long.MAX_VALUE) {
                j10 = ((S) this.f30049g).a(i9).f5301d;
                if (j10 != 0) {
                }
            }
            if (c0Var.l()) {
                RecyclerView recyclerView12 = (RecyclerView) this.f30051i;
                recyclerView12.attachViewToParent(view, recyclerView12.getChildCount(), view.getLayoutParams());
                z9 = true;
            } else {
                z9 = false;
            }
            C c12 = ((RecyclerView) this.f30051i).f9644S;
            c12.getClass();
            if (c0Var.f5371Y == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                c0Var.f5355I = iF;
                c0Var.f5362P = (c0Var.f5362P & (-520)) | 1;
                if (k.a()) {
                    Trace.beginSection(String.format("RV onBindViewHolder type=0x%X", Integer.valueOf(c0Var.f5358L)));
                }
            }
            c0Var.f5371Y = c12;
            if (RecyclerView.f9605i1) {
                if (view.getParent() != null) {
                }
                if (view.getParent() == null) {
                    throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + c0Var);
                }
            }
            c0Var.e();
            c12.c(c0Var, iF);
            if (z10) {
                arrayList = c0Var.f5363Q;
                if (arrayList != null) {
                    arrayList.clear();
                }
                c0Var.f5362P &= -1025;
                layoutParams = view.getLayoutParams();
                if (layoutParams instanceof M) {
                    ((M) layoutParams).f5296c = true;
                }
                Trace.endSection();
            }
            if (z9) {
                ((RecyclerView) this.f30051i).detachViewFromParent(view);
            }
            nanoTime = ((RecyclerView) this.f30051i).getNanoTime() - nanoTime7;
            Q qA5 = ((S) this.f30049g).a(c0Var.f5358L);
            j9 = qA5.f5301d;
            if (j9 != 0) {
                nanoTime = (nanoTime / 4) + ((j9 / 4) * 3);
            }
            qA5.f5301d = nanoTime;
            accessibilityManager = ((RecyclerView) this.f30051i).f9676l0;
            if (accessibilityManager != null) {
                if (view.getImportantForAccessibility() == 0) {
                    view.setImportantForAccessibility(1);
                }
                e0Var = ((RecyclerView) this.f30051i).f9649U0;
                if (e0Var != null) {
                    d0Var = e0Var.f5383e;
                    if (d0Var instanceof d0) {
                        d0Var.getClass();
                        accessibilityDelegateD = N.d(view);
                        if (accessibilityDelegateD == null) {
                            c0253b = null;
                        } else if (accessibilityDelegateD instanceof C0252a) {
                            c0253b = ((C0252a) accessibilityDelegateD).f4875a;
                        } else {
                            c0253b = new C0253b(accessibilityDelegateD);
                        }
                        if (c0253b != null) {
                            d0Var.f5376e.put(view, c0253b);
                        }
                    }
                    N.m(view, d0Var);
                }
            }
            if (((RecyclerView) this.f30051i).f9635N0.f5320g) {
                c0Var.f5359M = i8;
            }
            z11 = true;
        } else {
            if (!RecyclerView.f9605i1) {
            }
            iF = ((RecyclerView) this.f30051i).f9628K.f(i8, 0);
            c0Var.f5371Y = null;
            RecyclerView recyclerView13 = (RecyclerView) this.f30051i;
            c0Var.f5370X = recyclerView13;
            i9 = c0Var.f5358L;
            long nanoTime8 = recyclerView13.getNanoTime();
            if (j8 != Long.MAX_VALUE) {
                j10 = ((S) this.f30049g).a(i9).f5301d;
                if (j10 != 0) {
                }
            }
            if (c0Var.l()) {
                RecyclerView recyclerView14 = (RecyclerView) this.f30051i;
                recyclerView14.attachViewToParent(view, recyclerView14.getChildCount(), view.getLayoutParams());
                z9 = true;
            } else {
                z9 = false;
            }
            C c13 = ((RecyclerView) this.f30051i).f9644S;
            c13.getClass();
            if (c0Var.f5371Y == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                c0Var.f5355I = iF;
                c0Var.f5362P = (c0Var.f5362P & (-520)) | 1;
                if (k.a()) {
                    Trace.beginSection(String.format("RV onBindViewHolder type=0x%X", Integer.valueOf(c0Var.f5358L)));
                }
            }
            c0Var.f5371Y = c13;
            if (RecyclerView.f9605i1) {
                if (view.getParent() != null) {
                }
                if (view.getParent() == null) {
                    throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + c0Var);
                }
            }
            c0Var.e();
            c13.c(c0Var, iF);
            if (z10) {
                arrayList = c0Var.f5363Q;
                if (arrayList != null) {
                    arrayList.clear();
                }
                c0Var.f5362P &= -1025;
                layoutParams = view.getLayoutParams();
                if (layoutParams instanceof M) {
                    ((M) layoutParams).f5296c = true;
                }
                Trace.endSection();
            }
            if (z9) {
                ((RecyclerView) this.f30051i).detachViewFromParent(view);
            }
            nanoTime = ((RecyclerView) this.f30051i).getNanoTime() - nanoTime8;
            Q qA6 = ((S) this.f30049g).a(c0Var.f5358L);
            j9 = qA6.f5301d;
            if (j9 != 0) {
                nanoTime = (nanoTime / 4) + ((j9 / 4) * 3);
            }
            qA6.f5301d = nanoTime;
            accessibilityManager = ((RecyclerView) this.f30051i).f9676l0;
            if (accessibilityManager != null) {
                if (view.getImportantForAccessibility() == 0) {
                    view.setImportantForAccessibility(1);
                }
                e0Var = ((RecyclerView) this.f30051i).f9649U0;
                if (e0Var != null) {
                    d0Var = e0Var.f5383e;
                    if (d0Var instanceof d0) {
                        d0Var.getClass();
                        accessibilityDelegateD = N.d(view);
                        if (accessibilityDelegateD == null) {
                            c0253b = null;
                        } else if (accessibilityDelegateD instanceof C0252a) {
                            c0253b = ((C0252a) accessibilityDelegateD).f4875a;
                        } else {
                            c0253b = new C0253b(accessibilityDelegateD);
                        }
                        if (c0253b != null) {
                            d0Var.f5376e.put(view, c0253b);
                        }
                    }
                    N.m(view, d0Var);
                }
            }
            if (((RecyclerView) this.f30051i).f9635N0.f5320g) {
                c0Var.f5359M = i8;
            }
            z11 = true;
        }
        layoutParams2 = view.getLayoutParams();
        if (layoutParams2 == null) {
            m7 = (M) ((RecyclerView) this.f30051i).generateDefaultLayoutParams();
            view.setLayoutParams(m7);
        } else if (((RecyclerView) this.f30051i).checkLayoutParams(layoutParams2)) {
            m7 = (M) ((RecyclerView) this.f30051i).generateLayoutParams(layoutParams2);
            view.setLayoutParams(m7);
        } else {
            m7 = (M) layoutParams2;
        }
        m7.f5294a = c0Var;
        if (z7) {
            z12 = true;
        }
        m7.f5297d = z12;
        return c0Var;
    }

    public final void m(c0 c0Var) {
        if (c0Var.f5367U) {
            ((ArrayList) this.f30046d).remove(c0Var);
        } else {
            ((ArrayList) this.f30045c).remove(c0Var);
        }
        c0Var.f5366T = null;
        c0Var.f5367U = false;
        c0Var.f5362P &= -33;
    }

    public final void n() {
        Object obj = this.f30051i;
        this.f30044b = this.f30043a + (((RecyclerView) obj).f9646T != null ? ((RecyclerView) obj).f9646T.f5288j : 0);
        Cloneable cloneable = this.f30047e;
        for (int size = ((ArrayList) cloneable).size() - 1; size >= 0 && ((ArrayList) cloneable).size() > this.f30044b; size--) {
            h(size);
        }
    }

    public g(RecyclerView recyclerView) {
        this.f30051i = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.f30045c = arrayList;
        this.f30046d = null;
        this.f30047e = new ArrayList();
        this.f30048f = Collections.unmodifiableList(arrayList);
        this.f30043a = 2;
        this.f30044b = 2;
    }
}
