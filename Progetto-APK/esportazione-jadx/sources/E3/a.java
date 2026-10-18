package E3;

import com.google.android.gms.internal.ads.Ax;
import com.google.android.gms.internal.ads.Cx;
import com.google.android.gms.internal.ads.EnumC2319yx;
import com.google.android.gms.internal.ads.InterfaceC1119bo;
import com.google.android.gms.internal.ads.InterfaceC1255eL;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class a implements InterfaceC1119bo {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f2825G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f2826H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f2827I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f2828J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f2829K;

    public static a a(EnumC2319yx enumC2319yx, Ax ax, Cx cx, Cx cx2, boolean z7) {
        if (cx == Cx.NONE) {
            throw new IllegalArgumentException("Impression owner is none");
        }
        EnumC2319yx enumC2319yx2 = EnumC2319yx.DEFINED_BY_JAVASCRIPT;
        Cx cx3 = Cx.NATIVE;
        if (enumC2319yx == enumC2319yx2 && cx == cx3) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        if (ax == Ax.DEFINED_BY_JAVASCRIPT && cx == cx3) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        a aVar = new a();
        aVar.f2828J = enumC2319yx;
        aVar.f2829K = ax;
        aVar.f2826H = cx;
        aVar.f2827I = cx2;
        aVar.f2825G = z7;
        return aVar;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1119bo
    public final void zza(Object obj) {
        ((InterfaceC1255eL) obj).c((IOException) this.f2829K);
    }
}
