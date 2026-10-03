package p098m4;

import N.N;
import T.b;
import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import p000a.g;

/* JADX INFO: loaded from: classes.dex */
public final class a extends b {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f27284H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(BottomSheetBehavior bottomSheetBehavior) {
        super(0);
        this.f27284H = bottomSheetBehavior;
    }

    @Override // T.b
    public final int e(View view, int i8) {
        return view.getLeft();
    }

    @Override // T.b
    public final int f(View view, int i8) {
        BottomSheetBehavior bottomSheetBehavior = this.f27284H;
        int iT = bottomSheetBehavior.t();
        int i9 = bottomSheetBehavior.f24121j ? bottomSheetBehavior.f24128q : bottomSheetBehavior.f24120i;
        if (i8 < iT) {
            return iT;
        }
        return i8 > i9 ? i9 : i8;
    }

    @Override // T.b
    public final int h() {
        BottomSheetBehavior bottomSheetBehavior = this.f27284H;
        return bottomSheetBehavior.f24121j ? bottomSheetBehavior.f24128q : bottomSheetBehavior.f24120i;
    }

    @Override // T.b
    public final void j(int i8) {
        if (i8 == 1) {
            this.f27284H.v(1);
        }
    }

    @Override // T.b
    public final void k(View view, int i8, int i9) {
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001d A[PHI: r0
      0x001d: PHI (r0v9 int) = (r0v0 int), (r0v8 int), (r0v0 int) binds: [B:37:0x0087, B:31:0x0074, B:8:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // T.b
    public final void l(View view, float f8, float f9) {
        int i8;
        int i9;
        int i10 = 0;
        int i11 = 6;
        BottomSheetBehavior bottomSheetBehavior = this.f27284H;
        if (f9 < 0.0f) {
            if (bottomSheetBehavior.f24112a) {
                i8 = bottomSheetBehavior.f24118g;
                i9 = 3;
            } else {
                int top = view.getTop();
                int i12 = bottomSheetBehavior.f24119h;
                if (top > i12) {
                    i10 = i12;
                } else {
                    i11 = 3;
                }
                i8 = i10;
                i9 = i11;
            }
        } else if (bottomSheetBehavior.f24121j && bottomSheetBehavior.w(view, f9) && (view.getTop() > bottomSheetBehavior.f24120i || Math.abs(f8) < Math.abs(f9))) {
            i8 = bottomSheetBehavior.f24128q;
            i9 = 5;
        } else if (f9 == 0.0f || Math.abs(f8) > Math.abs(f9)) {
            int top2 = view.getTop();
            if (!bottomSheetBehavior.f24112a) {
                int i13 = bottomSheetBehavior.f24119h;
                if (top2 < i13) {
                    if (top2 < Math.abs(top2 - bottomSheetBehavior.f24120i)) {
                        i11 = 3;
                    } else {
                        i10 = bottomSheetBehavior.f24119h;
                    }
                } else if (Math.abs(top2 - i13) < Math.abs(top2 - bottomSheetBehavior.f24120i)) {
                    i10 = bottomSheetBehavior.f24119h;
                } else {
                    i10 = bottomSheetBehavior.f24120i;
                    i11 = 4;
                }
            } else if (Math.abs(top2 - bottomSheetBehavior.f24118g) < Math.abs(top2 - bottomSheetBehavior.f24120i)) {
                i10 = bottomSheetBehavior.f24118g;
                i11 = 3;
            } else {
                i10 = bottomSheetBehavior.f24120i;
                i11 = 4;
            }
            i8 = i10;
            i9 = i11;
        } else {
            i8 = bottomSheetBehavior.f24120i;
            i9 = 4;
        }
        if (!bottomSheetBehavior.f24124m.o(view.getLeft(), i8)) {
            bottomSheetBehavior.v(i9);
            return;
        }
        bottomSheetBehavior.v(2);
        g gVar = new g(this.f27284H, view, i9, 9, 0);
        WeakHashMap weakHashMap = N.f4843a;
        view.postOnAnimation(gVar);
    }

    @Override // T.b
    public final boolean m(View view, int i8) {
        WeakReference weakReference;
        View view2;
        BottomSheetBehavior bottomSheetBehavior = this.f27284H;
        int i9 = bottomSheetBehavior.f24123l;
        if (i9 == 1 || bottomSheetBehavior.f24134w) {
            return false;
        }
        return ((i9 == 3 && bottomSheetBehavior.f24132u == i8 && (view2 = (View) bottomSheetBehavior.f24130s.get()) != null && view2.canScrollVertically(-1)) || (weakReference = bottomSheetBehavior.f24129r) == null || weakReference.get() != view) ? false : true;
    }
}
