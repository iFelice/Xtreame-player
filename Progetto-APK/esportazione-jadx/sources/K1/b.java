package K1;

import C6.l;
import android.content.Context;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class b extends D6.h implements l {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4455G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Context f4456H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(Context context, int i8) {
        super(1);
        this.f4455G = i8;
        this.f4456H = context;
    }

    @Override // C6.l
    public final Object invoke(Object obj) {
        int i8 = this.f4455G;
        Context context = this.f4456H;
        switch (i8) {
            case 0:
                q0.h((Context) obj, "it");
                return new c(context, 0);
            case 1:
                q0.h((Context) obj, "it");
                return new L1.g(context, 0);
            default:
                q0.h((Context) obj, "it");
                return new L1.g(context, 1);
        }
    }
}
