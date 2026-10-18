package p174w3;

import android.content.Context;
import com.google.android.gms.internal.ads.C1523jg;
import com.google.android.gms.internal.ads.C1938rg;
import com.google.android.gms.internal.ads.IJ;
import com.google.android.gms.internal.ads.QJ;
import p120p3.a;

/* JADX INFO: loaded from: classes.dex */
public final class b implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f31006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f31007b;

    public b(C1523jg c1523jg, C1938rg c1938rg) {
        this.f31006a = c1523jg;
        this.f31007b = c1938rg;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        return new a((Context) this.f31006a.zzb(), (a) this.f31007b.zzb());
    }
}
