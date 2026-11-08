package p039f;

import A0.C;
import A0.J;
import B0.C0071v;
import B0.M0;
import D0.B;
import D0.C0124n;
import D0.C0126p;
import D0.InterfaceC0128s;
import D0.RunnableC0120j;
import D0.RunnableC0122l;
import D0.RunnableC0123m;
import F.f;
import F.g;
import F2.G;
import G.e;
import J.b;
import K.l;
import N.AbstractC0257f;
import N.InterfaceC0258g;
import N.InterfaceC0262k;
import N.InterfaceC0269s;
import N.N;
import N.X;
import N.Y;
import N.Z;
import N.h0;
import N.i0;
import Y.C0408u;
import Y.DialogInterfaceOnCancelListenerC0401m;
import Y.K;
import Y.d0;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.leanback.widget.C0488n;
import androidx.leanback.widget.C0489o;
import androidx.leanback.widget.C0491q;
import androidx.leanback.widget.L;
import androidx.media.AudioAttributesCompat;
import androidx.media.AudioAttributesImpl;
import androidx.media.AudioAttributesImplApi21;
import com.google.android.gms.common.api.d;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import org.videolan.libvlc.media.MediaPlayer;
import p032e0.w;
import p072j0.a;
import p079k.RunnableC3015g;
import p079k.h;
import p079k.i;
import p079k.m;
import p079k.o;
import p079k.q;
import p079k.z;
import p086l.C3042n;
import p086l.InterfaceC3025e0;
import p086l.InterfaceC3048q;
import p086l.N0;
import p086l.h1;
import p094m0.C3121d;
import p094m0.C3138v;
import p096m2.u;
import p117p0.AbstractC3164b;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public class S implements N0, z, m, InterfaceC3025e0, InterfaceC0269s, InterfaceC0258g, InterfaceC0262k, w, b, L, a, J, InterfaceC0128s {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f24987G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f24988H;

    public S(int i8) {
        this.f24987G = i8;
        if (i8 == 9) {
            this.f24988H = new ConcurrentHashMap();
            return;
        }
        if (i8 == 13) {
            int i9 = Build.VERSION.SDK_INT;
            if (i9 >= 30) {
                this.f24988H = new Z();
                return;
            } else if (i9 >= 29) {
                this.f24988H = new Y();
                return;
            } else {
                this.f24988H = new X();
                return;
            }
        }
        if (i8 == 27) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 35) {
                this.f24988H = new C0071v();
                return;
            } else if (i10 >= 23) {
                this.f24988H = new U4.b();
                return;
            } else {
                this.f24988H = null;
                return;
            }
        }
        if (i8 != 22) {
            if (i8 != 23) {
                this.f24988H = new ArrayDeque();
                return;
            } else {
                this.f24988H = new AudioAttributes.Builder();
                return;
            }
        }
        int i11 = AudioAttributesCompat.f9388b;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f24988H = new p072j0.b(23);
        } else {
            this.f24988H = new S(23);
        }
    }

    public static Object M(Object[] objArr, int i8, G g8) {
        int i9;
        boolean z7;
        int i10 = (i8 & 1) == 0 ? 400 : MediaPlayer.MEDIA_INFO_VIDEO_TRACK_LAGGING;
        boolean z8 = (i8 & 2) != 0;
        Object obj = null;
        int i11 = d.API_PRIORITY_OTHER;
        for (Object obj2 : objArr) {
            int i12 = g8.f3116G;
            switch (i12) {
                case 0:
                    i9 = ((l) obj2).f4298c;
                    break;
                default:
                    i9 = ((g) obj2).f2966b;
                    break;
            }
            int iAbs = Math.abs(i9 - i10) * 2;
            switch (i12) {
                case 0:
                    z7 = ((l) obj2).f4299d;
                    break;
                default:
                    z7 = ((g) obj2).f2967c;
                    break;
            }
            int i13 = iAbs + (z7 == z8 ? 0 : 1);
            if (obj == null || i11 > i13) {
                obj = obj2;
                i11 = i13;
            }
        }
        return obj;
    }

    @Override // N.InterfaceC0258g
    public final int A() {
        return ((ContentInfo) this.f24988H).getSource();
    }

    @Override // N.InterfaceC0262k
    public final float B() {
        return -((NestedScrollView) this.f24988H).getVerticalScrollFactorCompat();
    }

    @Override // N.InterfaceC0262k
    public final void E() {
        ((NestedScrollView) this.f24988H).f9019J.abortAnimation();
    }

    public final void F(Object obj, int i8, int i9, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        View view = (View) obj;
        if (i11 == Integer.MIN_VALUE || i11 == Integer.MAX_VALUE) {
            Object obj2 = this.f24988H;
            i11 = !((C0491q) obj2).f9358U.f9301c ? ((androidx.leanback.widget.Y) ((C0491q) obj2).f9360W.f26084e).f9287j : ((androidx.leanback.widget.Y) ((C0491q) obj2).f9360W.f26084e).f9286i - ((androidx.leanback.widget.Y) ((C0491q) obj2).f9360W.f26084e).f9288k;
        }
        Object obj3 = this.f24988H;
        if (!((C0491q) obj3).f9358U.f9301c) {
            i13 = i9 + i11;
            i12 = i11;
        } else {
            i12 = i11 - i9;
            i13 = i11;
        }
        int iC1 = ((C0491q) obj3).c1(i10);
        Object obj4 = this.f24988H;
        int i15 = (iC1 + ((androidx.leanback.widget.Y) ((C0491q) obj4).f9360W.f26085f).f9287j) - ((C0491q) obj4).f9346I;
        V.b bVar = ((C0491q) obj4).f9365b0;
        if (((p132r.l) bVar.f6995d) != null) {
            SparseArray<Parcelable> sparseArray = (SparseArray) ((p132r.l) bVar.f6995d).e(Integer.toString(i8));
            if (sparseArray != null) {
                view.restoreHierarchyState(sparseArray);
            }
        }
        ((C0491q) this.f24988H).i1(view, i10, i12, i13, i15);
        Object obj5 = this.f24988H;
        if (!((C0491q) obj5).f9372t.f5320g) {
            ((C0491q) obj5).D1();
        }
        Object obj6 = this.f24988H;
        if ((((C0491q) obj6).f9378z & 3) != 1 && ((C0491q) obj6).f9342E != null) {
            C0489o c0489o = ((C0491q) obj6).f9342E;
            boolean z7 = c0489o.f9317s;
            C0491q c0491q = c0489o.f9319u;
            if (z7 && (i14 = c0489o.f9318t) != 0) {
                c0489o.f9318t = c0491q.o1(i14, true);
            }
            int i16 = c0489o.f9318t;
            if (i16 == 0 || ((i16 > 0 && c0491q.g1()) || (c0489o.f9318t < 0 && c0491q.f1()))) {
                c0489o.f5537a = c0491q.f9339B;
                c0489o.h();
            }
        }
        ((C0491q) this.f24988H).getClass();
    }

    public Typeface G(Context context, f fVar, Resources resources, int i8) {
        long jLongValue;
        g gVar = (g) M(fVar.f2964a, i8, new G(1));
        if (gVar == null) {
            return null;
        }
        S s7 = e.f3283a;
        int i9 = gVar.f2970f;
        String str = gVar.f2965a;
        Typeface typefaceK = s7.K(context, resources, i9, str, i8);
        if (typefaceK != null) {
            e.f3284b.d(e.b(resources, i9, str, 0, i8), typefaceK);
        }
        if (typefaceK == null) {
            jLongValue = 0;
        } else {
            try {
                Field declaredField = Typeface.class.getDeclaredField("native_instance");
                declaredField.setAccessible(true);
                jLongValue = ((Number) declaredField.get(typefaceK)).longValue();
            } catch (IllegalAccessException e8) {
                Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e8);
                jLongValue = 0;
            } catch (NoSuchFieldException e9) {
                Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e9);
                jLongValue = 0;
            }
        }
        if (jLongValue != 0) {
            ((ConcurrentHashMap) this.f24988H).put(Long.valueOf(jLongValue), fVar);
        }
        return typefaceK;
    }

    public Typeface H(Context context, l[] lVarArr, int i8) throws Throwable {
        InputStream inputStreamOpenInputStream;
        InputStream inputStream = null;
        if (lVarArr.length < 1) {
            return null;
        }
        try {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(N(i8, lVarArr).f4296a);
            try {
                Typeface typefaceJ = J(context, inputStreamOpenInputStream);
                E3.f.e(inputStreamOpenInputStream);
                return typefaceJ;
            } catch (IOException unused) {
                E3.f.e(inputStreamOpenInputStream);
                return null;
            } catch (Throwable th) {
                th = th;
                inputStream = inputStreamOpenInputStream;
                E3.f.e(inputStream);
                throw th;
            }
        } catch (IOException unused2) {
            inputStreamOpenInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public Typeface I(Context context, List list, int i8) {
        throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
    }

    public Typeface J(Context context, InputStream inputStream) {
        File fileP = E3.f.p(context);
        if (fileP == null) {
            return null;
        }
        try {
            if (E3.f.g(fileP, inputStream)) {
                return Typeface.createFromFile(fileP.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileP.delete();
        }
    }

    public Typeface K(Context context, Resources resources, int i8, String str, int i9) {
        File fileP = E3.f.p(context);
        if (fileP == null) {
            return null;
        }
        try {
            if (E3.f.f(fileP, resources, i8)) {
                return Typeface.createFromFile(fileP.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileP.delete();
        }
    }

    public final int L(int i8, boolean z7, Object[] objArr, boolean z8) {
        int i9;
        View viewS;
        C0491q c0491q = (C0491q) this.f24988H;
        View viewD = c0491q.f9377y.d(i8 - c0491q.f9373u);
        C0488n c0488n = (C0488n) viewD.getLayoutParams();
        ((C0491q) this.f24988H).f9369q.K(viewD);
        ((C0491q) this.f24988H).getClass();
        c0488n.getClass();
        if (!c0488n.f5294a.j()) {
            if (z8) {
                if (z7) {
                    ((C0491q) this.f24988H).b(-1, viewD, true);
                } else {
                    ((C0491q) this.f24988H).b(0, viewD, true);
                }
            } else if (z7) {
                ((C0491q) this.f24988H).b(-1, viewD, false);
            } else {
                ((C0491q) this.f24988H).b(0, viewD, false);
            }
            int i10 = ((C0491q) this.f24988H).f9345H;
            if (i10 != -1) {
                viewD.setVisibility(i10);
            }
            C0489o c0489o = ((C0491q) this.f24988H).f9342E;
            if (c0489o != null && !c0489o.f9317s && (i9 = c0489o.f9318t) != 0) {
                C0491q c0491q2 = c0489o.f9319u;
                int i11 = i9 > 0 ? c0491q2.f9339B + c0491q2.f9356S : c0491q2.f9339B - c0491q2.f9356S;
                View view = null;
                while (c0489o.f9318t != 0 && (viewS = c0489o.f5538b.f9646T.s(i11)) != null) {
                    c0491q2.getClass();
                    if (viewS.getVisibility() == 0 && (!c0491q2.Q() || viewS.hasFocusable())) {
                        c0491q2.f9339B = i11;
                        c0491q2.f9340C = 0;
                        int i12 = c0489o.f9318t;
                        if (i12 > 0) {
                            c0489o.f9318t = i12 - 1;
                        } else {
                            c0489o.f9318t = i12 + 1;
                        }
                        view = viewS;
                    }
                    i11 = c0489o.f9318t > 0 ? i11 + c0491q2.f9356S : i11 - c0491q2.f9356S;
                }
                if (view != null && c0491q2.Q()) {
                    c0491q2.f9378z |= 32;
                    view.requestFocus();
                    c0491q2.f9378z &= -33;
                }
            }
            C0491q c0491q3 = (C0491q) this.f24988H;
            View viewFindFocus = viewD.findFocus();
            c0491q3.getClass();
            if (viewFindFocus != null) {
                ((C0488n) viewD.getLayoutParams()).getClass();
            }
            C0491q c0491q4 = (C0491q) this.f24988H;
            int i13 = c0491q4.f9378z;
            if ((i13 & 3) != 1) {
                if (i8 == c0491q4.f9339B && c0491q4.f9340C == 0 && c0491q4.f9342E == null) {
                    c0491q4.U0();
                }
            } else if ((i13 & 4) == 0) {
                if ((i13 & 16) == 0 && i8 == c0491q4.f9339B && c0491q4.f9340C == 0) {
                    c0491q4.U0();
                } else if ((i13 & 16) != 0 && i8 >= c0491q4.f9339B && viewD.hasFocusable()) {
                    C0491q c0491q5 = (C0491q) this.f24988H;
                    c0491q5.f9339B = i8;
                    c0491q5.f9340C = 0;
                    c0491q5.f9378z &= -17;
                    c0491q5.U0();
                }
            }
            ((C0491q) this.f24988H).k1(viewD);
        }
        objArr[0] = viewD;
        C0491q c0491q6 = (C0491q) this.f24988H;
        if (c0491q6.f9370r == 0) {
            c0491q6.getClass();
            return C0491q.Z0(viewD);
        }
        c0491q6.getClass();
        return C0491q.Y0(viewD);
    }

    public l N(int i8, l[] lVarArr) {
        return (l) M(lVarArr, i8, new G(0));
    }

    public final int O() {
        return ((C0491q) this.f24988H).f9372t.b() + ((C0491q) this.f24988H).f9373u;
    }

    public final int P(int i8) {
        C0491q c0491q = (C0491q) this.f24988H;
        View viewS = c0491q.s(i8 - c0491q.f9373u);
        C0491q c0491q2 = (C0491q) this.f24988H;
        return (c0491q2.f9378z & 262144) != 0 ? c0491q2.f9371s.b(viewS) : c0491q2.f9371s.d(viewS);
    }

    public final int Q(int i8) {
        C0491q c0491q = (C0491q) this.f24988H;
        View viewS = c0491q.s(i8 - c0491q.f9373u);
        Rect rect = C0491q.f9336e0;
        c0491q.B(rect, viewS);
        return c0491q.f9370r == 0 ? rect.width() : rect.height();
    }

    public final K R() {
        return ((C0408u) this.f24988H).f7982P;
    }

    public final void S() {
        ((C0408u) this.f24988H).f7982P.L();
    }

    public final void T(int i8) {
        C0491q c0491q = (C0491q) this.f24988H;
        View viewS = c0491q.s(i8 - c0491q.f9373u);
        C0491q c0491q2 = (C0491q) this.f24988H;
        if ((c0491q2.f9378z & 3) == 1) {
            c0491q2.E0(c0491q2.f9377y, c0491q2.f5279a.j(viewS), viewS);
        } else {
            c0491q2.y0(viewS, c0491q2.f9377y);
        }
    }

    public final a U(int i8) {
        ((AudioAttributes.Builder) this.f24988H).setLegacyStreamType(i8);
        return this;
    }

    @Override // N.InterfaceC0258g
    public final ClipData a() {
        return ((ContentInfo) this.f24988H).getClip();
    }

    @Override // p072j0.a
    public AudioAttributesImpl build() {
        return new AudioAttributesImplApi21(((AudioAttributes.Builder) this.f24988H).build());
    }

    @Override // D0.InterfaceC0128s
    public final void c(int i8) {
        C0124n c0124n = ((B) this.f24988H).eventDispatcher;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new F.l(c0124n, i8, 3));
        }
    }

    @Override // p079k.z
    public final void d(o oVar, boolean z7) {
        if (oVar instanceof p079k.G) {
            oVar.k().c(false);
        }
        z zVar = ((C3042n) this.f24988H).f26299K;
        if (zVar != null) {
            zVar.d(oVar, z7);
        }
    }

    @Override // J.b
    public final void e() {
        ((d0) this.f24988H).a();
    }

    @Override // D0.InterfaceC0128s
    public final void f(boolean z7) {
        C0124n c0124n = ((B) this.f24988H).eventDispatcher;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new M0(2, c0124n, z7));
        }
    }

    @Override // p079k.m
    public final boolean g(o oVar, MenuItem menuItem) {
        InterfaceC3048q interfaceC3048q = ((ActionMenuView) this.f24988H).f8831j0;
        return interfaceC3048q != null && ((h1) interfaceC3048q).f26266G.f8925p0.K();
    }

    @Override // N.InterfaceC0258g
    public final int getFlags() {
        return ((ContentInfo) this.f24988H).getFlags();
    }

    @Override // D0.InterfaceC0128s
    public final void h(long j8) {
        C0124n c0124n = ((B) this.f24988H).eventDispatcher;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new C(c0124n, 2, j8));
        }
    }

    @Override // D0.InterfaceC0128s
    public final void j(C0126p c0126p) {
        C0124n c0124n = ((B) this.f24988H).eventDispatcher;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new RunnableC0123m(c0124n, c0126p, 1));
        }
    }

    @Override // N.InterfaceC0269s
    public final i0 k(View view, i0 i0Var) {
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f24988H;
        if (!Objects.equals(coordinatorLayout.f8983S, i0Var)) {
            coordinatorLayout.f8983S = i0Var;
            boolean z7 = i0Var.d() > 0;
            coordinatorLayout.f8984T = z7;
            coordinatorLayout.setWillNotDraw(!z7 && coordinatorLayout.getBackground() == null);
            h0 h0Var = i0Var.f4901a;
            if (!h0Var.i()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i8 = 0; i8 < childCount; i8++) {
                    View childAt = coordinatorLayout.getChildAt(i8);
                    WeakHashMap weakHashMap = N.f4843a;
                    if (childAt.getFitsSystemWindows() && ((B.d) childAt.getLayoutParams()).f659a != null && h0Var.i()) {
                        break;
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return i0Var;
    }

    @Override // D0.InterfaceC0128s
    public final void l() {
        ((B) this.f24988H).hasPendingReportedSkippedSilence = true;
    }

    @Override // p079k.m
    public final void m(o oVar) {
        m mVar = ((ActionMenuView) this.f24988H).f8826e0;
        if (mVar != null) {
            mVar.m(oVar);
        }
    }

    @Override // p079k.z
    public final boolean o(o oVar) {
        Object obj = this.f24988H;
        if (oVar == ((C3042n) obj).f26297I) {
            return false;
        }
        ((p079k.G) oVar).f25746A.getClass();
        ((C3042n) obj).getClass();
        z zVar = ((C3042n) this.f24988H).f26299K;
        if (zVar != null) {
            return zVar.o(oVar);
        }
        return false;
    }

    @Override // p032e0.w
    public final void onChanged(Object obj) {
        if (((p032e0.m) obj) != null) {
            DialogInterfaceOnCancelListenerC0401m dialogInterfaceOnCancelListenerC0401m = (DialogInterfaceOnCancelListenerC0401m) this.f24988H;
            if (dialogInterfaceOnCancelListenerC0401m.f7902J0) {
                View viewN = dialogInterfaceOnCancelListenerC0401m.N();
                if (viewN.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                if (((DialogInterfaceOnCancelListenerC0401m) this.f24988H).f7906N0 != null) {
                    if (Log.isLoggable("FragmentManager", 3)) {
                        Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + ((DialogInterfaceOnCancelListenerC0401m) this.f24988H).f7906N0);
                    }
                    ((DialogInterfaceOnCancelListenerC0401m) this.f24988H).f7906N0.setContentView(viewN);
                }
            }
        }
    }

    @Override // D0.InterfaceC0128s
    public final void p(C0126p c0126p) {
        C0124n c0124n = ((B) this.f24988H).eventDispatcher;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new RunnableC0123m(c0124n, c0126p, 0));
        }
    }

    @Override // p086l.N0
    public final void q(o oVar, q qVar) {
        ((i) this.f24988H).f25785M.removeCallbacksAndMessages(null);
        int size = ((i) this.f24988H).f25787O.size();
        int i8 = 0;
        while (true) {
            if (i8 >= size) {
                i8 = -1;
                break;
            } else if (oVar == ((h) ((i) this.f24988H).f25787O.get(i8)).f25778b) {
                break;
            } else {
                i8++;
            }
        }
        if (i8 == -1) {
            return;
        }
        int i9 = i8 + 1;
        ((i) this.f24988H).f25785M.postAtTime(new RunnableC3015g(this, i9 < ((i) this.f24988H).f25787O.size() ? (h) ((i) this.f24988H).f25787O.get(i9) : null, qVar, oVar, 0), oVar, SystemClock.uptimeMillis() + 200);
    }

    @Override // p086l.N0
    public final void r(o oVar, MenuItem menuItem) {
        ((i) this.f24988H).f25785M.removeCallbacksAndMessages(oVar);
    }

    @Override // D0.InterfaceC0128s
    public final void s(int i8, long j8, long j9) {
        C0124n c0124n = ((B) this.f24988H).eventDispatcher;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new RunnableC0122l(c0124n, i8, j8, j9, 0));
        }
    }

    public final String toString() {
        switch (this.f24987G) {
            case 11:
                return "ContentInfoCompat{" + ((ContentInfo) this.f24988H) + "}";
            default:
                return super.toString();
        }
    }

    @Override // N.InterfaceC0262k
    public final boolean u(float f8) {
        if (f8 == 0.0f) {
            return false;
        }
        E();
        ((NestedScrollView) this.f24988H).j((int) f8);
        return true;
    }

    @Override // D0.InterfaceC0128s
    public final void v() {
        ((B) this.f24988H).onRendererCapabilitiesChanged();
    }

    @Override // D0.InterfaceC0128s
    public final void w(Exception exc) {
        x.d("DecoderAudioRenderer", "Audio sink error", exc);
        C0124n c0124n = ((B) this.f24988H).eventDispatcher;
        Handler handler = c0124n.f1961a;
        if (handler != null) {
            handler.post(new RunnableC0120j(c0124n, exc, 1));
        }
    }

    @Override // N.InterfaceC0258g
    public final ContentInfo x() {
        return (ContentInfo) this.f24988H;
    }

    @Override // D0.InterfaceC0128s
    public final void y() {
        ((B) this.f24988H).onPositionDiscontinuity();
    }

    @Override // D0.InterfaceC0128s
    public final /* synthetic */ void C() {
    }

    @Override // A0.J
    public final /* synthetic */ void b() {
    }

    @Override // D0.InterfaceC0128s
    public final /* synthetic */ void n() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ S(B b8) {
        this(b8, 29);
        this.f24987G = 29;
    }

    @Override // p086l.InterfaceC3025e0
    public void t(int i8) {
    }

    @Override // p086l.InterfaceC3025e0
    public void z(int i8) {
    }

    public /* synthetic */ S(Object obj, int i8) {
        this.f24987G = i8;
        this.f24988H = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ S(C3121d c3121d, int i8) {
        this(c3121d);
        this.f24987G = 24;
    }

    public S(C3121d c3121d) {
        this.f24987G = 24;
        AudioAttributes.Builder builder = new AudioAttributes.Builder();
        c3121d.getClass();
        AudioAttributes.Builder usage = builder.setContentType(0).setFlags(0).setUsage(1);
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 29) {
            usage.setAllowedCapturePolicy(1);
        }
        if (i8 >= 32) {
            usage.setSpatializationBehavior(0);
            usage.setIsContentSpatialized(false);
        }
        this.f24988H = usage.build();
    }

    public S(TextView textView) {
        this.f24987G = 16;
        AbstractC3164b.g(textView, "textView cannot be null");
        this.f24988H = new V.h(textView);
    }

    @Override // p086l.InterfaceC3025e0
    public void D(int i8, float f8) {
    }

    @Override // A0.J
    public final /* synthetic */ void i(C3138v c3138v, long j8) {
    }

    public S(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.f24987G = 14;
        if (Build.VERSION.SDK_INT >= 25) {
            this.f24988H = new P.f(uri, clipDescription, uri2);
        } else {
            this.f24988H = new u(uri, clipDescription, uri2, 8, 0);
        }
    }

    public S(p016c.g gVar) {
        this.f24987G = 8;
        this.f24988H = gVar;
    }

    public S(ContentInfo contentInfo) {
        this.f24987G = 11;
        contentInfo.getClass();
        this.f24988H = AbstractC0257f.g(contentInfo);
    }
}
