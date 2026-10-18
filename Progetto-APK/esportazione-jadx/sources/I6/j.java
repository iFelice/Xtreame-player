package I6;

import C6.p;
import java.io.Serializable;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class j implements p {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4041G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ boolean f4042H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Serializable f4043I;

    public /* synthetic */ j(Serializable serializable, boolean z7, int i8) {
        this.f4041G = i8;
        this.f4043I = serializable;
        this.f4042H = z7;
    }

    @Override // C6.p
    public final Object c(Object obj, Object obj2) {
        switch (this.f4041G) {
            case 0:
                char[] cArr = (char[]) this.f4043I;
                CharSequence charSequence = (CharSequence) obj;
                int iIntValue = ((Integer) obj2).intValue();
                q0.h(charSequence, "$this$DelimitedRangesSequence");
                int iK0 = k.K0(iIntValue, charSequence, this.f4042H, cArr);
                if (iK0 < 0) {
                    return null;
                }
                return new p155t6.c(Integer.valueOf(iK0), 1);
            default:
                return ((p185x6.j) obj).N((p185x6.h) obj2);
        }
    }
}
