package O1;

import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class b0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f5340G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f5341H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public OverScroller f5342I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Interpolator f5343J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f5344K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f5345L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f5346M;

    public b0(RecyclerView recyclerView) {
        this.f5346M = recyclerView;
        T.a aVar = RecyclerView.f9612p1;
        this.f5343J = aVar;
        this.f5344K = false;
        this.f5345L = false;
        this.f5342I = new OverScroller(recyclerView.getContext(), aVar);
    }

    public final void a(int i8, int i9) {
        RecyclerView recyclerView = this.f5346M;
        recyclerView.setScrollState(2);
        this.f5341H = 0;
        this.f5340G = 0;
        Interpolator interpolator = this.f5343J;
        T.a aVar = RecyclerView.f9612p1;
        if (interpolator != aVar) {
            this.f5343J = aVar;
            this.f5342I = new OverScroller(recyclerView.getContext(), aVar);
        }
        this.f5342I.fling(0, 0, i8, i9, Integer.MIN_VALUE, com.google.android.gms.common.api.d.API_PRIORITY_OTHER, Integer.MIN_VALUE, com.google.android.gms.common.api.d.API_PRIORITY_OTHER);
        b();
    }

    public final void b() {
        if (this.f5344K) {
            this.f5345L = true;
            return;
        }
        RecyclerView recyclerView = this.f5346M;
        recyclerView.removeCallbacks(this);
        WeakHashMap weakHashMap = N.N.f4843a;
        recyclerView.postOnAnimation(this);
    }

    public final void c(int i8, int i9, int i10, Interpolator interpolator) {
        RecyclerView recyclerView = this.f5346M;
        if (i10 == Integer.MIN_VALUE) {
            int iAbs = Math.abs(i8);
            int iAbs2 = Math.abs(i9);
            boolean z7 = iAbs > iAbs2;
            int width = z7 ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z7) {
                iAbs = iAbs2;
            }
            i10 = Math.min((int) (((iAbs / width) + 1.0f) * 300.0f), 2000);
        }
        int i11 = i10;
        if (interpolator == null) {
            interpolator = RecyclerView.f9612p1;
        }
        if (this.f5343J != interpolator) {
            this.f5343J = interpolator;
            this.f5342I = new OverScroller(recyclerView.getContext(), interpolator);
        }
        this.f5341H = 0;
        this.f5340G = 0;
        recyclerView.setScrollState(2);
        this.f5342I.startScroll(0, 0, i8, i9, i11);
        if (Build.VERSION.SDK_INT < 23) {
            this.f5342I.computeScrollOffset();
        }
        b();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        RecyclerView recyclerView = this.f5346M;
        if (recyclerView.f9646T == null) {
            recyclerView.removeCallbacks(this);
            this.f5342I.abortAnimation();
            return;
        }
        this.f5345L = false;
        this.f5344K = true;
        recyclerView.p();
        OverScroller overScroller = this.f5342I;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i13 = currX - this.f5340G;
            int i14 = currY - this.f5341H;
            this.f5340G = currX;
            this.f5341H = currY;
            int iO = RecyclerView.o(i13, recyclerView.f9682r0, recyclerView.f9684t0, recyclerView.getWidth());
            int iO2 = RecyclerView.o(i14, recyclerView.f9683s0, recyclerView.f9685u0, recyclerView.getHeight());
            int[] iArr = recyclerView.f9656Z0;
            iArr[0] = 0;
            iArr[1] = 0;
            boolean zU = recyclerView.u(iO, iO2, 1, iArr, null);
            int[] iArr2 = recyclerView.f9656Z0;
            if (zU) {
                iO -= iArr2[0];
                iO2 -= iArr2[1];
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.n(iO, iO2);
            }
            if (recyclerView.f9644S != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
                recyclerView.g0(iO, iO2, iArr2);
                int i15 = iArr2[0];
                int i16 = iArr2[1];
                int i17 = iO - i15;
                int i18 = iO2 - i16;
                C0323w c0323w = recyclerView.f9646T.f5283e;
                if (c0323w != null && !c0323w.f5540d && c0323w.f5541e) {
                    int iB = recyclerView.f9635N0.b();
                    if (iB == 0) {
                        c0323w.h();
                    } else if (c0323w.f5537a >= iB) {
                        c0323w.f5537a = iB - 1;
                        c0323w.e(i15, i16);
                    } else {
                        c0323w.e(i15, i16);
                    }
                }
                i11 = i15;
                i8 = i17;
                i9 = i18;
                i10 = i16;
            } else {
                i8 = iO;
                i9 = iO2;
                i10 = 0;
                i11 = 0;
            }
            if (!recyclerView.f9652W.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr3 = recyclerView.f9656Z0;
            iArr3[0] = 0;
            iArr3[1] = 0;
            int i19 = i10;
            recyclerView.v(i11, i10, i8, i9, null, 1, iArr3);
            int i20 = i8 - iArr2[0];
            int i21 = i9 - iArr2[1];
            if (i11 != 0 || i19 != 0) {
                recyclerView.w(i11, i19);
            }
            if (!recyclerView.awakenScrollBars()) {
                recyclerView.invalidate();
            }
            boolean z7 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i20 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i21 != 0));
            C0323w c0323w2 = recyclerView.f9646T.f5283e;
            if ((c0323w2 == null || !c0323w2.f5540d) && z7) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    if (i20 < 0) {
                        i12 = -currVelocity;
                    } else {
                        i12 = i20 > 0 ? currVelocity : 0;
                    }
                    if (i21 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i21 <= 0) {
                        currVelocity = 0;
                    }
                    if (i12 < 0) {
                        recyclerView.y();
                        if (recyclerView.f9682r0.isFinished()) {
                            recyclerView.f9682r0.onAbsorb(-i12);
                        }
                    } else if (i12 > 0) {
                        recyclerView.z();
                        if (recyclerView.f9684t0.isFinished()) {
                            recyclerView.f9684t0.onAbsorb(i12);
                        }
                    }
                    if (currVelocity < 0) {
                        recyclerView.A();
                        if (recyclerView.f9683s0.isFinished()) {
                            recyclerView.f9683s0.onAbsorb(-currVelocity);
                        }
                    } else if (currVelocity > 0) {
                        recyclerView.x();
                        if (recyclerView.f9685u0.isFinished()) {
                            recyclerView.f9685u0.onAbsorb(currVelocity);
                        }
                    }
                    if (i12 != 0 || currVelocity != 0) {
                        recyclerView.postInvalidateOnAnimation();
                    }
                }
                if (RecyclerView.f9610n1) {
                    p132r.h hVar = recyclerView.f9633M0;
                    int[] iArr4 = hVar.f29666d;
                    if (iArr4 != null) {
                        Arrays.fill(iArr4, -1);
                    }
                    hVar.f29667e = 0;
                }
            } else {
                b();
                r rVar = recyclerView.f9631L0;
                if (rVar != null) {
                    rVar.a(recyclerView, i11, i19);
                }
            }
            if (Build.VERSION.SDK_INT >= 35) {
                E.a(recyclerView, Math.abs(overScroller.getCurrVelocity()));
            }
        }
        C0323w c0323w3 = recyclerView.f9646T.f5283e;
        if (c0323w3 != null && c0323w3.f5540d) {
            c0323w3.e(0, 0);
        }
        this.f5344K = false;
        if (!this.f5345L) {
            recyclerView.setScrollState(0);
            recyclerView.o0(1);
        } else {
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap = N.N.f4843a;
            recyclerView.postOnAnimation(this);
        }
    }
}
