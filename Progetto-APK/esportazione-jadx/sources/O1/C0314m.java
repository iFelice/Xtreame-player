package O1;

import androidx.recyclerview.widget.RecyclerView;
import pe.hf.black20.ORPlayerMainActivity;

/* JADX INFO: renamed from: O1.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0314m extends P {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5457a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5458b;

    public C0314m(Object obj, int i8) {
        this.f5457a = i8;
        this.f5458b = obj;
    }

    @Override // O1.P
    public final void a(int i8) {
        switch (this.f5457a) {
            case 1:
                if (i8 != 0) {
                    ORPlayerMainActivity.f28776H0 = false;
                } else {
                    ORPlayerMainActivity.f28776H0 = true;
                }
                break;
            case 2:
                if (i8 != 0) {
                    ORPlayerMainActivity.f28776H0 = false;
                } else {
                    ORPlayerMainActivity.f28776H0 = true;
                }
                break;
            case 3:
                if (i8 != 0) {
                    String str = ORPlayerMainActivity.THEME;
                } else {
                    String str2 = ORPlayerMainActivity.THEME;
                }
                break;
            case 4:
                if (i8 != 0) {
                    ORPlayerMainActivity.f28776H0 = false;
                } else {
                    ORPlayerMainActivity.f28776H0 = true;
                }
                break;
            case 5:
                if (i8 != 0) {
                    String str3 = ORPlayerMainActivity.THEME;
                } else {
                    String str4 = ORPlayerMainActivity.THEME;
                }
                break;
            case 6:
                if (i8 != 0) {
                    ORPlayerMainActivity.f28776H0 = false;
                } else {
                    ORPlayerMainActivity.f28776H0 = true;
                }
                break;
        }
    }

    @Override // O1.P
    public final void b(RecyclerView recyclerView, int i8, int i9) {
        switch (this.f5457a) {
            case 0:
                C0317p c0317p = (C0317p) this.f5458b;
                int iComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
                int iComputeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
                int iComputeVerticalScrollRange = c0317p.f5492s.computeVerticalScrollRange();
                int i10 = c0317p.f5491r;
                int i11 = iComputeVerticalScrollRange - i10;
                int i12 = c0317p.f5474a;
                c0317p.f5493t = i11 > 0 && i10 >= i12;
                int iComputeHorizontalScrollRange = c0317p.f5492s.computeHorizontalScrollRange();
                int i13 = c0317p.f5490q;
                boolean z7 = iComputeHorizontalScrollRange - i13 > 0 && i13 >= i12;
                c0317p.f5494u = z7;
                boolean z8 = c0317p.f5493t;
                if (z8 || z7) {
                    if (z8) {
                        float f8 = i10;
                        c0317p.f5485l = (int) ((((f8 / 2.0f) + iComputeVerticalScrollOffset) * f8) / iComputeVerticalScrollRange);
                        c0317p.f5484k = Math.min(i10, (i10 * i10) / iComputeVerticalScrollRange);
                    }
                    if (c0317p.f5494u) {
                        float f9 = iComputeHorizontalScrollOffset;
                        float f10 = i13;
                        c0317p.f5488o = (int) ((((f10 / 2.0f) + f9) * f10) / iComputeHorizontalScrollRange);
                        c0317p.f5487n = Math.min(i13, (i13 * i13) / iComputeHorizontalScrollRange);
                    }
                    int i14 = c0317p.f5495v;
                    if (i14 == 0 || i14 == 1) {
                        c0317p.g(1);
                    }
                } else if (c0317p.f5495v != 0) {
                    c0317p.g(0);
                }
                break;
        }
    }
}
