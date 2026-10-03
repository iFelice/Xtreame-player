package p043f3;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.AbstractC1812p8;
import com.google.android.gms.internal.ads.L5;
import com.google.android.gms.internal.ads.Q7;
import p086l.RunnableC3036k;
import p090l3.C3097p;
import p090l3.C3099q;
import p090l3.H0;
import p090l3.I0;
import p090l3.InterfaceC3067a;
import p090l3.InterfaceC3113x0;
import p090l3.J;
import p090l3.S0;
import p090l3.d1;
import p120p3.b;
import p120p3.d;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class i extends ViewGroup {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final I0 f25183G;

    public i(Context context) {
        super(context);
        this.f25183G = new I0(this, null);
    }

    public final void a() {
        Q7.a(getContext());
        if (((Boolean) AbstractC1812p8.f20423c.l()).booleanValue()) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.ua)).booleanValue()) {
                b.f28201a.execute(new r(this, 1));
                return;
            }
        }
        I0 i8 = this.f25183G;
        i8.getClass();
        try {
            J j8 = i8.f26481i;
            if (j8 != null) {
                j8.f();
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
    }

    public final void b(f fVar) {
        c.d("#008 Must be called on the main UI thread.");
        Q7.a(getContext());
        if (((Boolean) AbstractC1812p8.f20424d.l()).booleanValue()) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.xa)).booleanValue()) {
                b.f28201a.execute(new RunnableC3036k(this, fVar, 23));
                return;
            }
        }
        this.f25183G.b(fVar.f25163a);
    }

    public final void c() {
        Q7.a(getContext());
        if (((Boolean) AbstractC1812p8.f20425e.l()).booleanValue()) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.va)).booleanValue()) {
                b.f28201a.execute(new r(this, 2));
                return;
            }
        }
        I0 i8 = this.f25183G;
        i8.getClass();
        try {
            J j8 = i8.f26481i;
            if (j8 != null) {
                j8.y0();
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
    }

    public final void d() {
        Q7.a(getContext());
        if (((Boolean) AbstractC1812p8.f20426f.l()).booleanValue()) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.ta)).booleanValue()) {
                b.f28201a.execute(new r(this, 0));
                return;
            }
        }
        I0 i8 = this.f25183G;
        i8.getClass();
        try {
            J j8 = i8.f26481i;
            if (j8 != null) {
                j8.t();
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
    }

    public b getAdListener() {
        return this.f25183G.f26478f;
    }

    public g getAdSize() {
        d1 d1VarZzg;
        I0 i8 = this.f25183G;
        i8.getClass();
        try {
            J j8 = i8.f26481i;
            if (j8 != null && (d1VarZzg = j8.zzg()) != null) {
                return new g(d1VarZzg.f26552K, d1VarZzg.f26549H, d1VarZzg.f26548G);
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
        g[] gVarArr = i8.f26479g;
        if (gVarArr != null) {
            return gVarArr[0];
        }
        return null;
    }

    public String getAdUnitId() {
        J j8;
        I0 i8 = this.f25183G;
        if (i8.f26482j == null && (j8 = i8.f26481i) != null) {
            try {
                i8.f26482j = j8.zzr();
            } catch (RemoteException e8) {
                h.i("#007 Could not call remote method.", e8);
            }
        }
        return i8.f26482j;
    }

    public l getOnPaidEventListener() {
        this.f25183G.getClass();
        return null;
    }

    public p getResponseInfo() {
        InterfaceC3113x0 interfaceC3113x0Zzk;
        I0 i8 = this.f25183G;
        i8.getClass();
        try {
            J j8 = i8.f26481i;
            interfaceC3113x0Zzk = j8 != null ? j8.zzk() : null;
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
        if (interfaceC3113x0Zzk != null) {
            return new p(interfaceC3113x0Zzk);
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i12 = ((i10 - i8) - measuredWidth) / 2;
        int i13 = ((i11 - i9) - measuredHeight) / 2;
        childAt.layout(i12, i13, measuredWidth + i12, measuredHeight + i13);
    }

    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        g adSize;
        int measuredHeight;
        int iO;
        int iO2;
        int i10;
        int measuredWidth = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            try {
                adSize = getAdSize();
            } catch (NullPointerException e8) {
                h.e("Unable to retrieve ad size.", e8);
                adSize = null;
            }
            if (adSize != null) {
                Context context = getContext();
                int i11 = adSize.f25174a;
                if (i11 == -3) {
                    iO = -1;
                } else if (i11 != -1) {
                    d dVar = C3097p.f26618f.f26619a;
                    iO = d.o(context, i11);
                } else {
                    iO = context.getResources().getDisplayMetrics().widthPixels;
                }
                int i12 = adSize.f25175b;
                if (i12 == -4 || i12 == -3) {
                    iO2 = -1;
                } else if (i12 != -2) {
                    d dVar2 = C3097p.f26618f.f26619a;
                    iO2 = d.o(context, i12);
                } else {
                    DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                    float f8 = displayMetrics.heightPixels;
                    float f9 = displayMetrics.density;
                    int i13 = (int) (f8 / f9);
                    if (i13 <= 400) {
                        i10 = 32;
                    } else {
                        i10 = i13 <= 720 ? 50 : 90;
                    }
                    iO2 = (int) (i10 * f9);
                }
                measuredHeight = iO2;
                measuredWidth = iO;
            } else {
                measuredHeight = 0;
            }
        } else {
            measureChild(childAt, i8, i9);
            measuredWidth = childAt.getMeasuredWidth();
            measuredHeight = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(measuredWidth, getSuggestedMinimumWidth()), i8), View.resolveSize(Math.max(measuredHeight, getSuggestedMinimumHeight()), i9));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setAdListener(b bVar) {
        I0 i8 = this.f25183G;
        i8.f26478f = bVar;
        H0 h8 = i8.f26476d;
        synchronized (h8.f26470G) {
            h8.f26471H = bVar;
        }
        if (bVar == 0) {
            this.f25183G.c(null);
            return;
        }
        if (bVar instanceof InterfaceC3067a) {
            this.f25183G.c((InterfaceC3067a) bVar);
        }
        if (bVar instanceof p051g3.b) {
            I0 i9 = this.f25183G;
            p051g3.b bVar2 = (p051g3.b) bVar;
            i9.getClass();
            try {
                i9.f26480h = bVar2;
                J j8 = i9.f26481i;
                if (j8 != null) {
                    j8.p0(new L5(bVar2));
                }
            } catch (RemoteException e8) {
                h.i("#007 Could not call remote method.", e8);
            }
        }
    }

    public void setAdSize(g gVar) {
        g[] gVarArr = {gVar};
        I0 i8 = this.f25183G;
        if (i8.f26479g != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        ViewGroup viewGroup = i8.f26483k;
        i8.f26479g = gVarArr;
        try {
            J j8 = i8.f26481i;
            if (j8 != null) {
                j8.u0(I0.a(viewGroup.getContext(), i8.f26479g, i8.f26484l));
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
        viewGroup.requestLayout();
    }

    public void setAdUnitId(String str) {
        I0 i8 = this.f25183G;
        if (i8.f26482j != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        i8.f26482j = str;
    }

    public void setOnPaidEventListener(l lVar) {
        I0 i8 = this.f25183G;
        i8.getClass();
        try {
            J j8 = i8.f26481i;
            if (j8 != null) {
                j8.N2(new S0());
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
    }

    public i(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f25183G = new I0(this, attributeSet);
    }
}
