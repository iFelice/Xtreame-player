package p118p1;

import Z3.H;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Arrays;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.N;
import p094m0.O;
import p096m2.c;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public final class i extends j {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final byte[] f28168o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final byte[] f28169p = {79, 112, 117, 115, 84, 97, 103, 115};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f28170n;

    public static boolean i(E e8, byte[] bArr) {
        if (e8.a() < bArr.length) {
            return false;
        }
        int i8 = e8.f28036b;
        byte[] bArr2 = new byte[bArr.length];
        e8.j(0, bArr2, bArr.length);
        e8.L(i8);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // p118p1.j
    public final long b(E e8) {
        byte[] bArr = e8.f28035a;
        return (((long) this.f28175e) * H.h(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0)) / 1000000;
    }

    @Override // p118p1.j
    public final boolean c(E e8, long j8, c cVar) {
        if (i(e8, f28168o)) {
            byte[] bArrCopyOf = Arrays.copyOf(e8.f28035a, e8.f28037c);
            int i8 = bArrCopyOf[9] & 255;
            ArrayList arrayListC = H.c(bArrCopyOf);
            if (((C3136t) cVar.f27210H) != null) {
                return true;
            }
            C3135s c3135s = new C3135s();
            c3135s.f26995m = O.p("audio/ogg");
            c3135s.f26996n = O.p("audio/opus");
            c3135s.f26973F = i8;
            c3135s.f26974G = 48000;
            c3135s.f26999q = arrayListC;
            cVar.f27210H = new C3136t(c3135s);
            return true;
        }
        if (!i(e8, f28169p)) {
            H1.j((C3136t) cVar.f27210H);
            return false;
        }
        H1.j((C3136t) cVar.f27210H);
        if (this.f28170n) {
            return true;
        }
        this.f28170n = true;
        e8.M(8);
        N nT = H1.t(z4.H.t((String[]) H1.u(e8, false, false).f2963J));
        if (nT == null) {
            return true;
        }
        C3135s c3135sA = ((C3136t) cVar.f27210H).a();
        c3135sA.f26993k = nT.b(((C3136t) cVar.f27210H).f27038l);
        cVar.f27210H = new C3136t(c3135sA);
        return true;
    }

    @Override // p118p1.j
    public final void d(boolean z7) {
        super.d(z7);
        if (z7) {
            this.f28170n = false;
        }
    }
}
