package N;

import com.google.android.gms.internal.ads.AbstractC1307fL;
import com.google.android.gms.internal.ads.C1669mL;
import com.google.android.gms.internal.ads.C2032tL;
import com.google.android.gms.internal.ads.C2135vK;
import com.google.android.gms.internal.ads.InterfaceC1119bo;
import com.google.android.gms.internal.ads.InterfaceC1152cL;

/* JADX INFO: loaded from: classes.dex */
public final class r implements InterfaceC1119bo {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4918G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f4919H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f4920I;

    public r(int i8) {
        this.f4918G = i8;
        if (i8 != 6) {
            return;
        }
        this.f4919H = 2500;
    }

    public final int a() {
        switch (this.f4918G) {
            case 12:
                break;
        }
        return this.f4919H;
    }

    public final int b() {
        int i8 = this.f4920I;
        if (i8 == 2) {
            return 10;
        }
        if (i8 == 5) {
            return 11;
        }
        if (i8 == 29) {
            return 12;
        }
        if (i8 == 42) {
            return 16;
        }
        if (i8 != 22) {
            return i8 != 23 ? 0 : 15;
        }
        return 1073741824;
    }

    public final p130q5.o c() {
        return new p130q5.o(this.f4919H, this.f4920I);
    }

    public final String toString() {
        switch (this.f4918G) {
            case 11:
                return "<" + this.f4919H + ' ' + this.f4920I + '>';
            default:
                return super.toString();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1119bo
    public final void zza(Object obj) {
        int i8 = C2135vK.f21463U;
        C2032tL c2032tL = (C2032tL) ((InterfaceC1152cL) obj);
        c2032tL.i(c2032tL.l(), 24, new C1669mL((AbstractC1307fL) null));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(int i8, int i9) {
        this(i8, i9, 10, 0);
        this.f4918G = 10;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(int i8, int i9, int i10) {
        this(i8, i9, 12, 0);
        this.f4918G = 12;
    }

    public /* synthetic */ r(int i8, int i9, int i10, int i11) {
        this.f4918G = i10;
        this.f4919H = i8;
        this.f4920I = i9;
    }

    public r(int i8, int i9, A0.O o4) {
        this.f4918G = 8;
        this.f4919H = i8;
        this.f4920I = i9;
    }

    public r(int i8, int i9, Object obj) {
        this.f4918G = 7;
        this.f4919H = i8;
        this.f4920I = i9;
    }

    public r() {
        this.f4918G = 0;
    }
}
